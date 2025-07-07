
-- CREATING RELATIONAL DATABASE WITH 5 TABLES, ACCORDING TO THE ANALYSIS I'M PLANNING 

-- 1. Creating base table: Museums
-- Includes basic identification and location fields
CREATE TABLE Museums (
    Museum_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);


-- 2. Creating Exhibitions table
-- Each exhibition is linked to a specific museum
-- My idea is to analyze visit patterns 
CREATE TABLE Exhibitions (
    Exhibition_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(150) NOT NULL,
    Start_Date DATE,
    End_Date DATE,
    Museum_ID INT,
    FOREIGN KEY (Museum_ID) REFERENCES Museums(Museum_ID)
);


-- 3. Creating Periods table - before/during/after COVID
-- My idea is to explore the sustainability of the need for cultural life, spiritual nourishment, under adverse social, financial, professional, etc. conditions.
-- Defining pandemic-related periods allows time-based grouping in queries
CREATE TABLE Covid_Periods (
    Period_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,  -- 'Pre-COVID', 'During COVID', 'Post-COVID'
    Start_Date DATE,
    End_Date DATE
);


-- 4. Creating Visitors table
-- Allows profile-based grouping in queries
CREATE TABLE Visitors (
    Visitor_ID INT PRIMARY KEY AUTO_INCREMENT,
    Age INT,
    Gender ENUM('Male', 'Female', 'Other'),
    Occupation VARCHAR(100)
);


-- 5. Creating Visits table
-- It satisfies my intention to explore the need for culture in critical historical periods - an idea stimulated by E. Kant's work "Critique of the Power of Judgment", in which he states that we can only speak of taste when basic needs are satisfied.
CREATE TABLE Visits (
    Visit_ID INT PRIMARY KEY AUTO_INCREMENT,
    Visitor_ID INT,
    Exhibition_ID INT,
    Visit_Date DATE,
    Period_ID INT,
    FOREIGN KEY (Visitor_ID) REFERENCES Visitors(Visitor_ID),
    FOREIGN KEY (Exhibition_ID) REFERENCES Exhibitions(Exhibition_ID),
    FOREIGN KEY (Period_ID) REFERENCES Covid_Periods(Period_ID)
);


-- ⚠️ TO DO!!!  
-- Arguing my decision to have exactly 5 tables + what determines the choice of their thematic content + what columns each of the tables should include
