import asyncio
import streamlit as st
import plotly.express as px
import pandas as pd

from api_client import fetch_top_skills, fetch_skills_growth, fetch_avg_salaries, fetch_vacancy_count_trend, \
    fetch_vacancy_count_by_city

st.set_page_config(
    page_title="JobTrends Analyzer",
    page_icon="📊",
    layout="wide"
)

st.title("📊 JobTrends Analyzer")
st.markdown("Анализ вакансий с HH.ru в реальном времени")


async def load_data(limit, skills_days, vacancy_days):
    """Функция для загрузки данных с API"""
    with st.spinner("Загрузка данных..."):
        try:
            skills, salaries, trends, vacancy_trends, vacancy_count_by_city = await asyncio.gather(
                fetch_top_skills(limit),
                fetch_avg_salaries(),
                fetch_skills_growth(skills_days),
                fetch_vacancy_count_trend(vacancy_days),
                fetch_vacancy_count_by_city()
            )
            return skills, salaries, trends, vacancy_trends, vacancy_count_by_city
        except Exception as e:
            st.error(f"Ошибка при загрузке данных: {str(e)}")
            return None, None, None, None, None

# Инициализация состояния сессии при первом запуске
if 'initialized' not in st.session_state:
    st.session_state.initialized = True
    st.session_state.skills = []
    st.session_state.salaries = []
    st.session_state.trends = []
    st.session_state.vacancy_trends = []
    st.session_state.vacancy_count_by_city = []
    st.session_state.skills_days = 30
    st.session_state.vacancy_days = 30
    st.session_state.limit = 20

# Создаем колонки для слайдеров
col1, col2, col3, col4, col5 = st.columns(5)

with col1:
    st.session_state.limit = st.slider("Топ навыков", 5, 50, st.session_state.limit, key='skills_limit')
with col2:
    st.session_state.skills_days = st.slider(
        "Дней для анализа навыков",
        7, 180,
        st.session_state.skills_days,
        key='skills_days_slider'
    )
with col3:
    st.write("")
with col4:
    st.session_state.vacancy_days = st.slider(
        "Дней для анализа вакансий",
        7, 180,
        st.session_state.vacancy_days,
        key='vacancy_days_slider'
    )
with col5:
    st.write("")

# Кнопка обновления данных
if st.button("Обновить данные") or not st.session_state.skills:
    with st.spinner("Обновление данных..."):
        skills, salaries, trends, vacancy_trends, vacancy_count_by_city = asyncio.run(
            load_data(st.session_state.limit, st.session_state.skills_days, st.session_state.vacancy_days)
        )
        
        if skills is not None:
            st.session_state.skills = skills
            st.session_state.salaries = salaries
            st.session_state.trends = trends
            st.session_state.vacancy_trends = vacancy_trends
            st.session_state.vacancy_count_by_city = vacancy_count_by_city
            st.rerun()

# Загружаем данные из состояния сессии
skills = st.session_state.skills
salaries = st.session_state.salaries
trends = st.session_state.trends
vacancy_trends = st.session_state.vacancy_trends
vacancy_count_by_city = st.session_state.vacancy_count_by_city
skills_days = st.session_state.skills_days
vacancy_days = st.session_state.vacancy_days

# График 1: Топ навыков
st.subheader("Топ востребованных навыков")
df_skills = pd.DataFrame(skills)
if not df_skills.empty:
    # Сортируем навыки по убыванию для лучшего отображения
    df_skills = df_skills.sort_values('count', ascending=True)
    # Создаем вертикальную гистограмму
    fig1 = px.bar(
        df_skills,
        x='count',
        y='skills',
        orientation='h',
        height=600,
        text='count',
        labels={'count': 'Количество упоминаний', 'skills': 'Навыки'}
    )
    # Настраиваем внешний вид
    fig1.update_layout(
        yaxis={'categoryorder': 'total ascending'},
        margin=dict(l=20, r=20, t=40, b=40),
        height=400 + len(df_skills) * 15  # Динамическая высота в зависимости от количества навыков
    )
    # Добавляем подписи значений на столбцах
    fig1.update_traces(
        textposition='outside',
        texttemplate='%{x:.0f}'
    )
    st.plotly_chart(fig1, use_container_width=True)
else:
    st.warning("Нет данных о навыках")

# График 2: Средняя зарплата по опыту
st.subheader("Средняя зарплата по опыту")
df_salaries = pd.DataFrame(salaries)
if not df_salaries.empty:
    fig2 = px.bar(
        df_salaries,
        x="experience",
        y="avg_salary_rub",
        text="avg_salary_rub",
        labels={"avg_salary_rub": "Средняя зарплата", "experience": "Опыт работы"},
        height=600
    )
    fig2.update_traces(texttemplate="%{text:.0f} руб.", textposition="outside")
    st.plotly_chart(fig2, use_container_width=True)
else:
    st.warning("Нет данных о зарплатах")

# График 3: Рост/падение навыков
st.subheader(f"Динамика навыков за последние {skills_days} дней")
if trends and len(trends) > 0:
    df_trends = pd.DataFrame(trends)
    
    # Заменяем inf на большое число для сортировки
    df_trends["sort_key"] = df_trends["growth_pct"].replace(float('inf'), 9999)
    
    # Сортируем: сначала рост, потом новые, потом падение
    df_trends = df_trends.sort_values("sort_key", ascending=False).head(20)
    
    # Создаем столбец для отображения
    def format_growth(x):
        if x["growth_pct"] == float('inf'):
            return "новый"
        try:
            # Пробуем преобразовать в число, если это строка
            value = float(x['growth_pct']) if isinstance(x['growth_pct'], str) else x['growth_pct']
            return f"{value:+.1f}%"
        except (ValueError, TypeError):
            return str(x['growth_pct'])
    
    df_trends["growth_display"] = df_trends.apply(format_growth, axis=1)
    
    # Заменяем inf на None для отображения
    df_trends["growth_pct"] = df_trends["growth_pct"].replace(float('inf'), None)
    
    # Создаем график
    fig3 = px.bar(
        df_trends,
        x="growth_pct",
        y="skill",
        orientation="h",
        text="growth_display",
        color="growth_pct",
        color_continuous_scale=["red", "yellow", "green"],
        range_color=[-100, 100],
        labels={"growth_pct": "Рост, %", "skill": "Навык"},
    )
    
    # Настраиваем внешний вид
    fig3.update_traces(
        textposition="outside",
        textfont_size=12,
        texttemplate='%{text}'
    )
    
    fig3.update_layout(
        height=max(500, len(df_trends) * 25),
        xaxis_title="Рост популярности, %",
        yaxis_title="",
        coloraxis_colorbar=dict(
            title="Рост, %",
            tickformat=".1f%"
        )
    )
    
    st.plotly_chart(fig3, use_container_width=True)
else:
    st.warning("Нет данных о динамике навыков")


# График 4: Рост вакансий за последние N дней
st.subheader(f"Динамика количества вакансий за {vacancy_days} дней")
if vacancy_trends and len(vacancy_trends) > 0:
    df_vacancy_trends = pd.DataFrame(vacancy_trends)
    if not df_vacancy_trends.empty:
        # Преобразуем даты в правильный формат
        df_vacancy_trends['date'] = pd.to_datetime(df_vacancy_trends['date'])

        # Сортируем по дате
        df_vacancy_trends = df_vacancy_trends.sort_values('date')

        # Создаем график
        fig4 = px.line(
            df_vacancy_trends,
            x='date',
            y='count',
            title='Динамика количества вакансий',
            labels={'date': 'Дата', 'count': 'Количество вакансий'}
        )

        # Настраиваем отображение дат
        fig4.update_xaxes(
            rangeslider_visible=True,
            rangeselector=dict(
                buttons=list([
                    dict(count=7, label="1 нед.", step="day", stepmode="backward"),
                    dict(count=1, label="1 мес.", step="month", stepmode="backward"),
                    dict(count=3, label="3 мес.", step="month", stepmode="backward"),
                    dict(step="all")
                ])
            )
        )

        st.plotly_chart(fig4, use_container_width=True)
    else:
        st.warning("Нет данных о динамике вакансий")
else:
    st.warning("Данные о динамике вакансий не загружены")

# График 5: Количество вакансий по городам
st.subheader("Количество вакансий по городам")

if vacancy_count_by_city and len(vacancy_count_by_city) > 0:
    try:
        # Проверяем формат данных
        if isinstance(vacancy_count_by_city, list) and len(vacancy_count_by_city) > 0:
            # Проверяем первый элемент на наличие нужных ключей
            first_item = vacancy_count_by_city[0]

            # Обрабатываем оба возможных формата данных
            if 'city' in first_item and 'vacancy_count' in first_item:
                # Формат: [{"city": "Москва", "vacancy_count": 100}, ...]
                df_vacancy_count_by_city = pd.DataFrame([
                    {'city': item['city'], 'count': item['vacancy_count']}
                    for item in vacancy_count_by_city
                ])
            elif 'area_name' in first_item and 'vacancy_count' in first_item:
                # Формат: [{"area_name": "Москва", "vacancy_count": 100}, ...]
                df_vacancy_count_by_city = pd.DataFrame([
                    {'city': item['area_name'], 'count': item['vacancy_count']}
                    for item in vacancy_count_by_city
                ])
            else:
                # Пробуем создать DataFrame как есть
                df_vacancy_count_by_city = pd.DataFrame(vacancy_count_by_city)

                # Проверяем наличие нужных колонок
                if 'city' not in df_vacancy_count_by_city.columns or 'count' not in df_vacancy_count_by_city.columns:
                    # Пробуем переименовать колонки, если они имеют другие имена
                    if 'area_name' in df_vacancy_count_by_city.columns:
                        df_vacancy_count_by_city = df_vacancy_count_by_city.rename(columns={'area_name': 'city'})
                    if 'vacancy_count' in df_vacancy_count_by_city.columns:
                        df_vacancy_count_by_city = df_vacancy_count_by_city.rename(columns={'vacancy_count': 'count'})
        else:
            df_vacancy_count_by_city = pd.DataFrame()

        # Проверяем наличие нужных колонок после преобразований
        if not df_vacancy_count_by_city.empty and 'city' in df_vacancy_count_by_city.columns and 'count' in df_vacancy_count_by_city.columns:
            # Сортируем города по количеству вакансий (по убыванию)
            df_vacancy_count_by_city = df_vacancy_count_by_city.sort_values('count', ascending=True)

            # Создаем график
            fig5 = px.bar(
                df_vacancy_count_by_city,
                x='count',
                y='city',
                orientation='h',
                text='count',
                labels={'city': 'Город', 'count': 'Количество вакансий'},
                title='Количество вакансий по городам'
            )

            # Настраиваем отображение значений на графике
            fig5.update_traces(texttemplate='%{text:,}', textposition='outside')

            # Настраиваем высоту графика в зависимости от количества городов
            fig5.update_layout(
                height=max(400, len(df_vacancy_count_by_city) * 25),
                margin=dict(l=10, r=10, t=50, b=10)
            )

            st.plotly_chart(fig5, use_container_width=True)
        else:
            st.warning("Неверный формат данных о городах. Ожидаются колонки 'city' и 'count'.")
            st.json(first_item)

    except Exception as e:
        st.error(f"Ошибка при обработке данных о городах: {str(e)}")
        st.json(vacancy_count_by_city)  # Выводим сырые данные для отладки
else:
    st.warning("Нет данных о количестве вакансий по городам")

