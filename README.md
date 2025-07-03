# art-museum-covid-sql-analysis

# 🖼️ Art Museum Visitor Analysis (Work in Progress)

*📍 Metropolitan and Guggenheim, during and after COVID* /temporary working title/ 

________________________________________

⚠️ NB! This is a work-in-progress SQL analysis project using educational, simulated data inspired by museum statistics. Some sections include idea comments or to-do notes. The purpose of these comments is to document my thought process during development and analysis. Final documentation is under development.
________________________________________


## 📊 Project goal - initial notes on my overall idea:
- To identify an approximate specificity of the so-called "persona" - type of visitors who are most often among the halls of these world-famous museums (what age are they, in what professional field are they realized, of what gender, what type of cultural events are they most strongly and most often intrigued by, etc. /.
- To track the impact of COVID-19 on the attendance of cultural institutions and on this basis to draw a kind of conclusion about the sustainability of the need for culture in a dynamic in the negative sense of the word surrounding environment.
- To make a comparison between two leading museums in New York and on this basis to make an assumption about successful/unsuccessful strategies for cultural management, etc.


## 🗃️ Project file content:
├── README.md               <- project description
├── er_diagram.png          <- ER diagram
├── create_tables.sql       <- creating tables script
├── insert_sample_data.sql  <- inserts data script
├── analysis_queries.sql    <- SQL queries
├── pivot_charts.xlsx       <- Excel pivot charts


## 🗃️ Database structure
The relational structure contains 5 main tables:
- 'Museums' - data about museums
- 'Exhibitions' - exhibitions in museums
- 'Visitors' - visitor profiles
- 'Visits' - when and what was visited
- 'Covid_Periods' – periods separated as follows: before - during - after the pandemic


## 📊 ER Database diagram
🧩 **ER disgram (PNG):**  
🔗 **ER static diagram:** - C:\Users\USER\Downloads\Metropolitan Museum of Art - Guggenheim Museum_ERD.png
/https://1drv.ms/i/c/449aa745568c36c9/EUpo32-7MI1OhDnnOwwwReoBpqeU1UXLDl0Fw3XxSQY25Q?e=BTggA6/


🔗 **ER interactive diagram:**  
🔍 https://dbdiagram.io/d/Metropolitan-Museum-of-Art-Guggenheim-Museum_ERD-6866426cf413ba3508154092


## 🧠 SQL analyses

📁 SQL scripts:
🔎 See all SQL queries here: queries.sql

Examples:
- Most visited exhibitions
- Visits summarized in periods, relative to COVID - before, during and after
- Visitor profile (age, gender, profession, etc.)
- Comparison between museums - derivation of trends (eventually, if possible)
- Analysis of successful/unsuccessful practices in cultural management + eventually recommendations /if possible and if I have ideas to recommend/


## 📈 Visualizations
-- colorful and clearly descriptive pivot charts with elegant design


## 🚀 Technologies
- SQL (MySQL)
- Python (pandas, matplotlib)
- Excel - Pivot charts 
- Git / GitHub


## 🎓 Author
Desislava Strahilova Georgieva 
🎓 PhD in Art History 
💻 Entry level SQL enthusiast with interests in cultural statistics and data visualization  
