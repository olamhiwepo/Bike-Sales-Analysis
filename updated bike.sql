select * from updated_bike;

select country, sum(Revenue) from updated_bike
group by country
order by sum(Revenue) desc;

select year, sum(revenue), sum(profit) from updated_bike
group by year
order by sum(revenue) desc;

select Customer_Gender, sum(revenue) as totalsum, Product_Category from updated_bike
group by Customer_Gender, Product_Category
order by totalsum desc;

select sum(revenue) as totalsum, Product_Category from updated_bike
group by  Product_Category
order by totalsum desc;

select country, sum(revenue) as totalsum, Product_Category from updated_bike
group by  Product_Category, country
order by totalsum desc;

select distinct(country), count(Country) from updated_bike 
where country regexp '^[a,e,i,o,u]'
group by Country;

select country from updated_bike
where Country regexp '^[j-u].{12}$'
