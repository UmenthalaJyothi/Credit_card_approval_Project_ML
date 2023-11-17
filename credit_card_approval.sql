select * from data_cleaned;
#1  Group the customers based on their income type and find the average of their annual income.
select avg(annual_income),Type_income from data_cleaned group by Type_Income;
#2  Find the female owners of cars and property.
select gender,car_owner,propert_owner from data_cleaned where gender="F" and car_owner="Y" and Propert_Owner="Y";
#3  Find the male customers who are staying with their families.
select * from data_cleaned where gender="M" and Housing_type="with Parents";
#4  Please list the top five people having the highest income.
select * from data_cleaned  order by annual_income desc limit 5;
#5  How many married people are having bad credit?
select marital_status,count(*) No_of_bad_credits  from data_cleaned where Marital_status="Married" and label=1;
#6  What is the highest education level and what is the total count?
select EDUCATION,count(education) from data_cleaned where EDUCATION="higher education";
#6 Between married males and females, who is having more bad credit? 
with Bad_credit as 
(select GENDER,COUNT(*) No_of_Bad_Credit
from data_cleaned 
where  label = 1 AND Marital_status = "Married"
Group by Gender) 
select  * from  Bad_credit
order by  No_of_Bad_Credit desc limit 1 ;


