-- ⚠️ NOTE: This file contains early-stage queries and exploratory logic.
-- Several queries are under construction and will be optimized/refactored later.


-- FILLING ALL 5 TABLES WITH PROPER DATA. 
-- I provide an explanation of where I got the statistical data from - links, publication date, etc.


-- 1. Data for Museums
INSERT INTO Museums (Museum_ID, Name, Location) VALUES (1, 'Metropolitan Museum of Art', 'New York');
INSERT INTO Museums (Museum_ID, Name, Location) VALUES (2, 'Guggenheim Museum', 'New York');
-- To inesert a lot more data!!!


-- 2. Data for Exhibitions
INSERT INTO Exhibitions (Exhibition_ID, Name, Start_Date, End_Date, Museum_ID) 
VALUES (1, 'Van Gogh''s Irises', '2018-04-01', '2018-09-30', 1);

INSERT INTO Exhibitions (Exhibition_ID, Name, Start_Date, End_Date, Museum_ID) 
VALUES (2, 'Ancient Egypt Revisited', '2019-02-15', '2019-07-15', 1);

INSERT INTO Exhibitions (Exhibition_ID, Name, Start_Date, End_Date, Museum_ID) 
VALUES (3, 'Heavenly Bodies: Fashion and the Catholic Imagination', '2021-09-01', '2022-01-31', 1);

INSERT INTO Exhibitions (Exhibition_ID, Name, Start_Date, End_Date, Museum_ID) 
VALUES (4, 'Hilma af Klint: Paintings for the Future', '2018-10-12', '2019-04-23', 2);

INSERT INTO Exhibitions (Exhibition_ID, Name, Start_Date, End_Date, Museum_ID) 
VALUES (5, 'Kandinsky at the Guggenheim', '2020-07-01', '2021-01-10', 2);

INSERT INTO Exhibitions (Exhibition_ID, Name, Start_Date, End_Date, Museum_ID) 
VALUES (6, 'Contemporary Abstractions', '2022-03-01', '2022-09-30', 2);
-- To inesert a lot more data!!!


-- 3. Data for Covid_Periods
INSERT INTO Covid_Periods (Period_ID, Name, Start_Date, End_Date) 
VALUES (1, 'Pre-COVID', '2018-01-01', '2019-12-31');

INSERT INTO Covid_Periods (Period_ID, Name, Start_Date, End_Date) 
VALUES (2, 'During COVID', '2020-01-01', '2021-06-30');

INSERT INTO Covid_Periods (Period_ID, Name, Start_Date, End_Date) 
VALUES (3, 'Post-COVID', '2021-07-01', '2024-12-31');
-- To inesert a lot more data!!!


-- 4. Data for Visitors 
INSERT INTO Visitors (Visitor_ID, Age, Gender, Occupation) 
VALUES (1, 64, 'Female', 'Engineer');

INSERT INTO Visitors (Visitor_ID, Age, Gender, Occupation) 
VALUES (2, 61, 'Male', 'Doctor');

INSERT INTO Visitors (Visitor_ID, Age, Gender, Occupation) 
VALUES (3, 53, 'Other', 'Curator');
-- To inesert a lot more data!!!


-- 5. Data for Visits 
INSERT INTO Visits (Visit_ID, Visitor_ID, Exhibition_ID, Visit_Date, Period_ID) 
VALUES (1, 45, 1, '2019-01-14', 1);
INSERT INTO Visits (Visit_ID, Visitor_ID, Exhibition_ID, Visit_Date, Period_ID) 
VALUES (2, 37, 2, '2020-11-05', 2);
INSERT INTO Visits (Visit_ID, Visitor_ID, Exhibition_ID, Visit_Date, Period_ID) 
VALUES (3, 79, 6, '2021-07-17', 3);
-- To inesert a lot more data!!!


-- ⚠️ TO DO LIST:
-- TO DO: Consider adding a 'Nationality' column to Visitors for regional trends
-- IDEA: Create a derived table for recurring visitors to analyze loyalty
-- NOTE: I need to finish inserting sample data for table 'Visits'
