# art-museum-covid-sql-analysis

# 🖼️ Art Museum Visitor Analysis (Work in Progress)

* Analyzing visitor trends at the Metropolitan and Guggenheim Museums pre-, during, and post-COVID /Preliminary Title/ 
 
________________________________________

⚠️ **Note**: This is a work-in-progress SQL analysis project using educational, simulated data inspired by museum statistics. Some sections include idea comments or to-do notes. The purpose of these comments is to document my thought process during development and analysis. Final documentation is under development.

________________________________________

## 📊 Project goal - initial notes on my overall idea:

- To identify visitor personas (age, profession, gender, interests, etc.).
  
  
- To track the impact of COVID-19 on the attendance of cultural institutions and on this basis to draw a kind of conclusion about the sustainability of the need for culture in a dynamic in the negative sense of the word surrounding environment.
  
  
- To make a comparison between two leading museums in New York and on this basis to make an assumption about successful/unsuccessful strategies for cultural management, etc.


-----


## 🗃️ Project file content:

├── README.md               <- project description

├── er_diagram.png          <- ER diagram

├── create_tables.sql       <- creating tables script

├── insert_sample_data.sql  <- inserts data script

├── analysis_queries.sql    <- SQL queries

├── pivot_charts.xlsx       <- Excel pivot charts


-----


## 🗃️ Database structure

The relational structure contains 5 main tables:

- 'Museums' - data about museums
  
- 'Exhibitions' - exhibitions in museums
  
- 'Visitors' - visitor profiles
  
- 'Visits' - when and what was visited
  
- 'Covid_Periods' – periods separated as follows: before - during - after the pandemic


-----


## 📊 ER Database diagram

🧩 **ER static diagram:**  https://1drv.ms/i/c/449aa745568c36c9/EUpo32-7MI1OhDnnOwwwReoBpqeU1UXLDl0Fw3XxSQY25Q?e=BTggA6/


🔍 **ER interactive diagram:** https://dbdiagram.io/d/Metropolitan-Museum-of-Art-Guggenheim-Museum_ERD-6866426cf413ba3508154092


-----


## 🧠 SQL analyses

-- This is just an example. This query aims to compare total visits across museums in order to understand which museum drew higher attendance overall

SELECT  m.Name AS Museum,  COUNT(v.Visit_ID) AS Total_Visits

FROM  Visits AS v
    
JOIN  Exhibitions AS e ON v.Exhibition_ID = e.Exhibition_ID    

JOIN  Museums AS m ON e.Museum_ID = m.Museum_ID    

GROUP BY m.Name; 


🔎 See all SQL queries here: analysis_queries.sql


-----


## 📈 Visualizations
-- After filling all tables with data, I will add colorful and clearly descriptive pivot charts with elegant design


-----


## 🚀 Technologies
- SQL (MySQL)
  
- Python
  
- Excel (Pivot Charts)
  
- Git/GitHub

-----


## How to Run
1. Install MySQL and import create_tables.sql and insert_sample_data.sql.
   
3. Run analysis_queries.sql to analyze data.
   
5. Open pivot_charts.xlsx in Excel.


-----

 
## 🎓 Author
Desislava Strahilova Georgieva 

🎓 PhD in Art History 

💻 Research interests include the intersection of art history and digital methodologies, with a focus on data-informed approaches to visual culture, structured analysis of artworks, and the application of computational tools to support scholarly inquiry and interpretation. 

🎨 Passionate about bridging art history and data, with a strong focus on visual cognition, categorization, and analytical consistency.  
