-- -- Query the two cities in STATION with the shortest and longest CITY names,
-- as well as their respective lengths (i.e.: number of characters in the name).
-- If there is more than one smallest or largest city, choose the one that comes
-- first when ordered alphabetically. 

(select city, length(city) from station 
order by length(city), city limit 1)
union
(select city, length(city) from station 
order by length(city) desc, city limit 1);


-----------------------------------------------------------------------------------

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
-- Your result cannot contain duplicates.

select distinct city from station
where city rlike '^[aeiou]';


-----------------------------------------------------------------------------------

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

select distinct city from station
where city rlike '[aeiou]$';


------------------------------------------------------------------------------------

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
-- as both their first and last characters. Your result cannot contain duplicates

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';

-- or --

SELECT DISTINCT CITY FROM STATION
WHERE CITY rlike '^[aeiou].*[aeiou]$';

-- or --

select distinct CITY from STATION
where CITY rlike '^[aeiou]' and CITY rlike '[aeiou]$';

-- or --
select distinct CITY from STATION
where CITY regexp '^[aeiou]' and CITY regexp '[aeiou]$';


---------------------------------------------------------------------------------------------

-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

select distinct city from station
where city rlike '^[^aeiou]';


---------------------------------------------------------------------------------------------

-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

select distinct city from station
where city rlike '[^aieou]$'


--------------------------------------------------------------------------------------------

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
-- Your result cannot contain duplicates.

select distinct city from station 
where city rlike '^[^aeiou]|[^aeiou]$'; 


----------------------------------------------------------------------------------------------

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels.
-- Your result cannot contain duplicates.

select distinct city from station
where city rlike '^[^aeiou]' and city rlike '[^aeiou]$';


---------------------------------------------------------------------------------------------

-- Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last
-- three characters of each name. If two or more students both have names ending in the same last three
-- characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

select name from students
where marks > 75 
order by substring(name, -3), id;


--------------------------------------------------------------------------------------------


-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
-- Input Format

select name from employee
order by name;


-------------------------------------------------------------------------------------------

-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater
-- 2000 than per month who have been employees for less than  10 months. Sort your result by ascending employee_id.

select name from employee
where salary > 2000 and months < 10
order by employee_id;


------------------------------------------------------------------------------------------------

