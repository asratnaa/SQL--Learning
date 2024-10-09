select * from salarie;

select count(experience_level) from salarie;
select count( distinct experience_level) from salarie;

select count( distinct experience_level) - count(experience_level) as difference
from salarie ;

select DISTINCT job_studentsperformancetitle from salarie where substr(job_title,1,1) not in ('a','i','u','e','o') 
and substr(job_title,-1) not in ('a','i','u','e','o');

select * from studentsperformance;

select distinct parental_level_of_education from studentsperformance
where math_score > 70 order by (right(parental_level_of_education,1)) asc;

select round(sum(lat_n),2),round(sum(long_w),2) from station;
SELECT CAST(MAX(lat_n) AS DECIMAL(30, 4)) FROM station WHERE lat_n < 137.2345;



select ceil(avg(cast(salary as decimal))) - ceil(avg(cast(replace(salary,'0','')as decimal)))
from salarie;

select concat((select max(salary) from salarie), ' ', count(*)) from salarie
where salary = (select max(salary) from salarie);

select 
    ROUND(SUM(LAT_N), 2),
    ROUND(SUM(LONG_W), 2)
from 
    STATION;
    
    
    

Select round(sum(LAT_N),4) from Station where Lat_n between 38.7880 AND 137.2345;

SELECT SALARY FROM salarie WHERE SALARY_IN_USD > 72000 AND
SALARY_IN_USD = (SELECT MAX(salary_in_usd)FROM SALARIE);

select ROUND(LONG_W ,4) from station where LAT_N < 137.2345 ORDER BY LAT_N DESC LIMIT 1;

select sum(city.population) from city right outer join country 
on city.countrycode = country.code where continent = 'asia';

select country.continent, floor(avg(city.population)) from city  join country
on city.countrycode = country.code group by country.continent;

SELECT JOB_TITLE FROM SALARIE WHERE JOB_TITLE LIKE '%ANALYST';

SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0 ;

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

SELECT DISTINCT job_title FROM Salarie WHERE SUBSTR(job_title,1,1) IN ('a' , 'i' , 'u' ,'e', 'o');

select distinct city from station where substr(city,1,1) in ('a','i','u','e','o') and substr(city,-1) in ('a','i','u','e','o') ;

select job_title from salarie where salary> 72000 order by right(job_title,3), salary asc;

SELECT CEIL(AVG(SALARY) - AVG(CAST(REPLACE(SALARY,'0','') AS FLOAT))) FROM EMPLOYEES;

select concat (round(sum(lat_n),2) ,' ', round(sum(long_w),2)) from station;

select concat((select max(months*salary) from employee), " ", count(*)) 
from employee where (months*salary) = (select max(months*salary) from employee);

SELECT CAST(SUM(LAT_N) AS DECIMAL(30, 4)) FROM STATION WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

select truncate(max(lat_n),4) from station where lat_n < 137.2345;
select ROUND(min(LAT_N),4) FROM STATION WHERE LAT_N > 38.7780 ;
SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N < 137.2345 ORDER BY LAT_N DESC LIMIT 1;

SELECT SUM(CITY.POPULATION) FROM CITY LEFT JOIN COUNTRY ON CITY.COUNTRYCODE = 
COUNTRY.CODE WHERE CONTINENT = 'ASIA';

SELECT round((MAX(LAT_N) - MIN(LAT_N)) + (MAX(LONG_W) - MIN(LONG_W)), 4) FROM STATION;
select country.continent , floor(avg(city.population)) from city join country on city.countrycode 
= country.code group by country.continent;

select concat(job_title,' ',experience_level )
from salarie where salary> 70000 limit 1;

SELECT
CONCAT(c.customer_id,' ', c.name,' ','+',a.country_code,c.PHONE_NUMBER) FROM
customers c inner join country_codes a
ON a.country = c.country 