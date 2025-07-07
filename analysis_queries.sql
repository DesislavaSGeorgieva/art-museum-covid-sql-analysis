
-- FORMING MAIN QUERIES 

-- Query 1: Total number of visits per exhibition
-- Goal: Identify most popular exhibitions overall
SELECT 
    e.Name AS Exhibition,
    COUNT(v.Visit_ID) AS Total_Visits
FROM Visits AS v
JOIN Exhibitions AS e ON v.Exhibition_ID = e.Exhibition_ID
GROUP BY e.Name
ORDER BY Total_Visits DESC;


-- Query 2: Compare total visits across museums
-- Goal: Understand which museum drew higher attendance overall
SELECT m.Name AS Museum,
    COUNT(v.Visit_ID) AS Total_Visits
FROM Visits AS v
JOIN Exhibitions AS e ON v.Exhibition_ID = e.Exhibition_ID
JOIN Museums AS m ON e.Museum_ID = m.Museum_ID
GROUP BY m.Name;


-- Query 3: Distribution of visitors by profession - Shows what types of people visit museums most often.
SELECT Occupation, COUNT(*) AS Visitors_Count
FROM Visitors
GROUP BY Occupation
ORDER BY Visitors_Count DESC;


-- Query 4: Visits grouped by COVID periods
-- Goal: Observe how museum attendance changed across time
SELECT 
    c.Name AS Covid_Period,
    COUNT(v.Visit_ID) AS Visits
FROM Visits AS v
JOIN Covid_Periods AS c ON v.Period_ID = c.Period_ID
GROUP BY c.Name
ORDER BY c.Name;


-- Query 5: Average age of visitors by period - Shows whether the age profile of the audience has changed.
SELECT 
    c.Name AS Covid_Period,
    ROUND(AVG(vis.Age), 1) AS Avg_Age
FROM Visits AS v
JOIN Visitors AS vis ON v.Visitor_ID = vis.Visitor_ID
JOIN Covid_Periods AS c ON v.Period_ID = c.Period_ID
GROUP BY c.Name;


-- Query 6: The most visited exhibition of each museum 
-- Displays the "top exhibition" of each museum.
SELECT 
    m.Name AS Museum,
    e.Name AS Exhibition,
    COUNT(v.Visit_ID) AS Total_Visits
FROM Visits AS v
JOIN Exhibitions AS e ON v.Exhibition_ID = e.Exhibition_ID
JOIN Museums AS m ON e.Museum_ID = m.Museum_ID
GROUP BY m.Museum_ID, e.Exhibition_ID
HAVING COUNT(v.Visit_ID) = (
    SELECT MAX(visit_count)
    FROM (
        SELECT COUNT(*) AS visit_count
        FROM Visits AS v2
        JOIN Exhibitions AS e2 ON v2.Exhibition_ID = e2.Exhibition_ID
        WHERE e2.Museum_ID = m.Museum_ID
        GROUP BY v2.Exhibition_ID
    ) AS subquery
);



-- Query 7: Visitor distribution by age group and pandemic period
-- Goal: Understand how different demographics responded during different periods
SELECT 
    CASE 
        WHEN vis.Age < 25 THEN 'Under 25'
        WHEN vis.Age BETWEEN 25 AND 44 THEN '25–44'
        WHEN vis.Age BETWEEN 45 AND 64 THEN '45–64'
        ELSE '65+'
    END AS Age_Group,
    c.Name AS Covid_Period,
    COUNT(*) AS Visits
FROM Visits AS v
JOIN Visitors AS vis ON v.Visitor_ID = vis.Visitor_ID
JOIN Covid_Periods AS c ON v.Period_ID = c.Period_ID
GROUP BY Age_Group, c.Name
ORDER BY Age_Group, c.Name;


-- Query 8: Exhibitions with above average attendance - Shows "successful" exhibitions - above average attendance.
SELECT 
e.Name AS Exhibition, 
COUNT(v.Visit_ID) AS Visits
FROM Visits AS v
JOIN Exhibitions AS e ON v.Exhibition_ID = e.Exhibition_ID
GROUP BY e.Exhibition_ID
HAVING COUNT(v.Visit_ID) > (
    SELECT AVG(cnt) 
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Visits
        GROUP BY Exhibition_ID
    ) AS subq
);



-- ⚠️ TO DO LIST!!! 

-- 1. TRY TO FORM BRIEF AND CLEAR CONCLUSIONS!

-- 2. ON THE BASIS OF THE CONCLUSIONS - WHAT RECOMMENDATIONS WILL I MAKE AND HOW WILL I FORM THEM!

-- 3. ADD COLORFUL DIAGRAMS - PIVOT CHARTS ALONGSIDE EVERY QUERY!

-- 4. For each request I need to explain in detail what justifies its necessity - how it contributes to the full development of the conceptual idea of ​​my project!!!

