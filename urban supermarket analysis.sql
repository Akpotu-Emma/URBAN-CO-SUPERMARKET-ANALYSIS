select*from supermarket;   
# CHANGED THE DATE DATATYPE FROM TEXT TO DATE
alter table supermarket modify Date date;
# CREATED A NEW COLUMN MONTH AND EXTRACTED MONTHNAME
alter table supermarket add column Month text(20);
update supermarket set Month =monthname(Date);
# RENAMED COLUMN
alter table supermarket rename column `ï»¿Invoice ID` to Invoice_ID ;
alter table supermarket rename column  `Product line` TO Product_line;
alter table supermarket rename column `Customer type` to Customer_type;
#1
# TO IDENTIFY CITY WITH THE HIGHEST SALES
select city,sum(sales) as Profitable_city
from supermarket
group by city
order by Profitable_city desc;
#2
# THE MOST PREFERED USE OF PAYMENT
select Payment,count(Payment) as Prefered_payment
FROM supermarket
group by Payment
order by Prefered_payment desc;
#3
# TO DETERMINE MOST PATRONIZING GENDER
select Gender,count(Gender) as Patronizing_gender
FROM supermarket
group by Gender
order by Patronizing_gender  desc;
#4
# EVALUATE SALES PERFORMANCE BY PRODUCT LINE
select Product_line,sum(sales) as Total_product_line
from supermarket
group by Product_line
order by Total_product_line desc;
#5
# ANALYZE PRODUCT LINE SALES VOLUME 
select Product_line,sum(Quantity) as Quantity_sold
from supermarket
group by Product_line
order by Quantity_sold desc;
#6
# TO IDENTIFY PRODUCT LINE WITH THE HIGHEST AVERAGE RATING
select Product_line,avg(Rating)
from supermarket
group by Product_line
order by avg(Rating) desc;
#7
# MONTHLY SALES TREND
select Month,sum(sales) as Month_sales
from supermarket
group by Month
order by Month_sales desc;
#8
# THE MOST VALUABLE CUSTOMER
select Customer_type, sum(Sales) as Valueable_customer
from supermarket
group by Customer_type
order by  Valueable_customer  desc; 