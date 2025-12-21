# Database is "ecommerce_and_sales"
use ecommerce_and_sales;

# Report from "customer_details" table
select * from customer_details;

#1 Which age group has the highest number of users?
select Age_group, count(*) as user_count
from customer_details
group by Age_group
order by user_count desc;
/* Report
Adults	            8768
Middle-aged adults	8022
Older adults	    7945
Young adults	    7928
Adolescents	        3909
Senior adults	    1604
*/

#2 Which age group spent the most time on the app?
select Age_group, round(sum(Total_hours_spent_on_app), 3) as total_hours
from customer_details
group by Age_group
order by total_hours desc;
/* Report
Adults	            1,42,023.936
Middle-aged adults	1,29,587.216
Older adults	    1,27,807.318
Young adults	    1,27,372.924
Adolescents	          63,438.949
Senior adults	      26,092.308
*/

#3 Which age group placed the most orders?
select Age_group, sum(Total_orders) as total_orders_count
from customer_details
group by Age_group
order by total_orders_count desc;
/* Report 
Adults	            1,88,150
Middle-aged adults	1,71,377
Young adults	    1,70,944
Older adults	    1,69,655
Adolescents        	  84,521
Senior adults    	  34,911

Therefore, the age group that spends more time on the app places the most orders, 
as increased time spent makes users more interested in purchasing more products.*/

#4 Which age group accepted and declined the most orders?
select Age_group, sum(Accepted_orders) as accepted_orders_count
from customer_details
group by Age_group
order by accepted_orders_count desc;
/* Accepted report
Adults	            99,437
Middle-aged adults	88,739
Young adults	    88,460
Older adults     	88,348
Adolescents	        44,412
Senior adults   	18,322
*/
select Age_group, sum(Declined_orders) as declined_orders_count
from customer_details
group by Age_group
order by declined_orders_count desc;
/* Declined report
Adults	            88,645
Middle-aged adults	82,596
Young adults    	82,454
Older adults    	81,407
Adolescents     	40,102
Senior adults	    16,582
*/

#5 What are the total number of customers, total hours spent on the app, and total orders placed by customers aged between 25 and 45 ?
select count(*) as customers_count,
    round(sum(Total_hours_spent_on_app), 3) as total_hours_spent,
    sum(Total_orders) as total_orders_placed
from customer_details
where Age between 25 and 45;
/* Report 
customers_count         17,475	          
total_hours_spent     2,82,058.383
total_orders_placed	  3,75,868

The age range of 25 to 45 was chosen because most individuals in this group typically have permanent jobs,
are financially capable of purchasing products, and are more likely to spend time on social media.
Therefore, they represent key customers with a higher potential to purchase more products in the future
*/

#6 What is the number of total orders, accepted orders, and declined orders from the e-commerce business over the 6 years?
select
    sum(Total_orders) as total_orders_count,
    sum(Accepted_orders) as accepted_orders_count,
    sum(Declined_orders) as declined_orders_count
from customer_details;
/* Report
total_orders_count      8,19,558	
accepted_orders_count   4,27,718	
declined_orders_count   3,91,786
*/

# Report from "product_details" table
select * from product_details;

#7 Which products were sold in the highest quantity, based on category?
select Category,  sum(Quantity) as total_quantity_sold
from product_details
group by Category
order by total_quantity_sold desc;
/* Category base
Electronics & Gadgets	13680
Fashion & Accessories	 9386
Personal Care & Beauty	 6366
Home & Furniture	     5188
Kitchen & Household	     5175
Vehicles & Accessories	 5043
Entertainment & Books	 4168
Snacks & Miscellaneous	 3156
*/

#8 How many subcategories are there?
select count(distinct Sub_category) as Subcategories_count
from product_details;
# 43

#9 Which are the top 10 products sold in the highest quantities, based on sub-categories?
select Sub_category,  sum(Quantity) as total_quantity_sold
from product_details
group by Sub_category
order by total_quantity_sold desc
limit 10;
/* Report
Mobile Phone	3306
Cloth	        2144
Television   	2120
Watch       	2055
Laptop	        2030
Car	            2019
Hair Cream  	1118
Home Curtain	1102
Makeup	        1095
Smartwatch	    1091
*/

#10 Which products received the highest discounts, based on category? 
select Category, round(sum(Discount),3) as total_discount
from product_details
group by Category
order by total_discount desc;
/* Category base
Electronics & Gadgets    1,50,841.94
Fashion & Accessories    1,03,259.54
Personal Care & Beauty     69,204.54
Kitchen & Household	       57,616.84
Home & Furniture	       56,703.2
Vehicles & Accessories	   54,955.26
Entertainment & Books	   45,815.36
Snacks & Miscellaneous	   34,318.85
*/

#11 Which are the top 10 products that received the highest discounts, based on sub-categories?
select Sub_category, round(sum(Discount),3) as total_discount
from product_details
group by Sub_category
order by total_discount desc
limit 10;
/* Report
Mobile Phone	36,208.49
Watch	        23,560.33
Cloth        	23,309.21
Television   	23,081.1
Laptop      	22,938.4
Car	            21,421.06
Hair Cream  	12,162.23
T-Shirt     	12,014.26
Wireless Mouse 	11,977.99
Fiction	        11,958.49
*/

#12 Which feedback type is most frequently provided by customers?
select Feedback, count(*) as feedback_count
from product_details
group by Feedback
order by feedback_count desc;
/* Report
Very Good	9846
Excellent	9504
Average	    4767
Poor	    4717
Good	    4685
Not good	4657
*/

#13 What are the total counts of ‘Very Good,’ ‘Excellent,’ and ‘Average’
select count(Feedback) as feedback_count
from product_details
where Feedback in ('Very Good', 'Excellent', 'Average');
# 24117  Out of 38,176 total customers, 24,117 provided a positive response

#14 Which product received the highest rating, based on category? 
select Category, sum(Rating) as sum_of_rating
from product_details
group by Category
order by sum_of_rating desc;
/* Category base
Electronics & Gadgets	30,495
Fashion & Accessories	20,576
Personal Care & Beauty	13,988
Kitchen & Household	    11,563
Home & Furniture	    11,523
Vehicles & Accessories	10,978
Entertainment & Books	 9,152
Snacks & Miscellaneous 	 6,875
*/

#15 Which are the top 10 products that received the highest rating, based on subcategory?
select Sub_category, sum(Rating) as sum_of_rating
from product_details
group by Sub_category
order by sum_of_rating desc
limit 10; 
/* Report
Mobile Phone	7364
Watch	        4712
Cloth	        4673
Laptop	        4661
Television    	4638
Car	            4335
Wireless Mouse	2513
Makeup         	2487
Home Curtain	2449
Fiction	        2405
*/

#16 Which are the top 10 subcategories that received the most positive responses (‘Very Good’, ‘Excellent’, and ‘Average’)?
select Sub_category,
    count(*) as positive_feedback_count
from product_details
where Feedback in ('Very Good', 'Excellent', 'Average')
group by Sub_category
order by positive_feedback_count desc
limit 10;
/* Report
Mobile Phone   1538
Watch	        993
Television    	968
Cloth	        968
Laptop	        950
Car	            929
Wireless Mouse	522
Fiction	        515
Makeup	        514
Hair Cream	    504
*/

#17 Which are the top 2 category that received the most positive responses (‘Very Good’, ‘Excellent’, and ‘Average’)?
select Category,
    count(*) as positive_feedback_count
from product_details
where Feedback in ('Very Good', 'Excellent', 'Average')
group by Category
order by positive_feedback_count desc
limit 2;
/* Report
Electronics & Gadgets	6356
Fashion & Accessories	4285
*/

# Report from both "customer_details" and "product details"

#18 Which age group purchased more products in the Electronics & Gadgets and Fashion & Accessories categories?
select cd.Age_group,
    count(pd.Category) as count_of_purchase
from customer_details cd
join product_details pd
    on cd.Id_number = pd.Id_number
where pd.Category in ('Electronics & Gadgets', 'Fashion & Accessories')
group by cd.Age_group
order by count_of_purchase desc;
/* Report
Adults          	3863
Young adults	    3556
Older adults	    3534
Middle-aged adults	3533
Adolescents	        1746
Senior adults	     701
*/

/*19 Which age group purchased more products in the Mobile Phone, Watch, Television, Cloth, Laptop, Car, Wireless Mouse, 
Fiction, Makeup and Hair Cream Sub_categories ?*/
select cd.Age_group,
    count(pd.Sub_category) as count_value
from customer_details cd
join product_details pd
    on cd.Id_number = pd.Id_number
where pd.Sub_category in ('Mobile Phone', 'Watch', 'Television', 'Cloth', 'Laptop', 'Car', 'Wireless Mouse', 
                          'Fiction', 'Makeup', 'Hair Cream')
group by cd.Age_group
order by count_value desc;
/*Report
Adults	            3054
Young adults	    2813
Middle-aged adults	2812
Older adults	    2710
Adolescents	        1306
Senior adults     	 534
*/

#20 Which are the top 3 age groups that gave the most positive responses (‘Very Good’, ‘Excellent’, and ‘Average’)?
select cd.Age_group,
    count(*) as positive_feedback_count
from customer_details cd
join product_details pd
    on cd.Id_number = pd.Id_number
where pd.Feedback in ('Very Good', 'Excellent', 'Average')
group by cd.Age_group
order by positive_feedback_count desc
limit 3;
/* Report
Adults	            5562
Middle-aged adults	5065
Older adults	    5041
*/

# Report from "delivery_and_sales_details" table
select * from delivery_and_sales_details;

# Converting MM/DD/YYYY string to proper DATE
# Converting the Order_date column
update delivery_and_sales_details
set Order_date = str_to_date(Order_date, '%m/%d/%Y');
alter table delivery_and_sales_details
modify column Order_date DATE;

# Converting the Shipping_date column
update delivery_and_sales_details
set Shipping_date = str_to_date(Shipping_date, '%m/%d/%Y');
alter table delivery_and_sales_details
modify column Shipping_date DATE;

# Converting the Delivered_date column
update delivery_and_sales_details
set Delivered_date = str_to_date(Delivered_date, '%m/%d/%Y');
alter table delivery_and_sales_details
modify column Delivered_date DATE;

#21 Which year recorded the highest sales, cost, revenue and profit?
select year(Delivered_date) as each_year,
    round(sum(Sales),5) as total_sales,
    round(sum(Cost),5) as total_expense,
    round(sum(Revenue),5) as total_turnover,
	round(sum(Profit),5) as net_profit
from delivery_and_sales_details
group by each_year
order by each_year asc;
/*
each_year     total_sales        total_expense         total_turnover           net_profit
2019	    14,83,09,270.9	     9,33,79,412.4	      12,88,69,219.22	      3,54,89,806.82
2020	    15,52,71,460.33	     9,81,68,230.34	      13,51,45,520.81	      3,69,77,290.47
2021	    14,73,06,139.62	     9,35,21,757.25	      12,70,49,537.33	      3,35,27,780.08
2022	    14,93,40,059.54	     9,43,83,222.89	      13,00,95,982.02	      3,57,12,759.13
2023	    15,58,57,690.82	     9,79,73,215.48	      13,55,96,221.45	      3,76,23,005.97
2024	    16,24,48,794.72	    10,41,63,784.69	      14,02,47,073.7	      3,60,83,289.01
2025	       25,12,135.97	       14,88,938.29	         22,08,575.2	         7,19,636.91
*/

#22 Which regions and states recorded the highest number of product sales based on count?
select Region,
    count(Region) as sales_count
from delivery_and_sales_details
group by Region
order by sales_count desc;
/* Region base
East	  12,916
South	  12,301
North	   6,411
West	   6,064
Central	     484
*/

select State,
    count(State) as sales_count
from delivery_and_sales_details
group by State
order by sales_count desc;
/* State base
Kerala	              3852
Bihar	              2958
Maharashtra	          2639
West Bengal	          2639
Tamil Nadu	          2516
Uttar Pradesh	      2485
Nagaland	          2245
Andhra Pradesh	      2116
Telangana	          2028
Karnataka	          1789
Himachal Pradesh	  1662
Rajasthan	          1290
Odisha	              1267
Mizoram	              1266
Gujarat	              1258
Manipur	              1239
Goa	                   877
Tripura	               868
Chandigarh	           488
Jharkhand	           484
Haryana	               470
Punjab	               442
Kashmir	               437
Assam                  434
Delhi	               427
*/

#23 Which payment method is preferred by most customers?
select Payment_method,
    count(*) as payment_count
from delivery_and_sales_details
group by Payment_method
order by payment_count desc;
/* Report
UPI Methods	9298
Cash on Delivery	6383
Credit Card	6307
Wallet Payment	5752
Debit Card	4157
Net Banking	4137
EMI	2142
*/

#24 Which region recorded the highest sales, cost, revenue, and profit?
select Region,
	round(sum(Sales),5) as total_sales,
    round(sum(Cost),5) as total_expense,
    round(sum(Revenue),5) as total_turnover,
	round(sum(Profit),5) as net_profit
from delivery_and_sales_details
group by Region;
/*
Region       total_sales         total_expense       total_turnover       net_profit
East	   30,70,73,039.05	    19,35,00,146.01	    26,72,50,350.78	    7,37,50,204.77
South	   30,04,13,158.5	    19,10,06,363.49  	25,97,94,127.46     6,87,87,763.97
North	   15,67,41,205.11	     9,89,43,721.81	    13,63,62,204.63	    3,74,18,482.82
West	   14,65,97,630.47	     9,31,65,644.99	    12,70,66,263.72	    3,39,00,618.73
Central	    1,02,20,518.77	       64,62,685.04	       87,39,183.14	      22,76,498.1
*/

#25 Show the records of sales, cost, revenue, and profit on a state-wise basis?
select State,
	round(sum(Sales),5) as total_sales,
    round(sum(Cost),5) as total_expense,
    round(sum(Revenue),5) as total_turnover,
	round(sum(Profit),5) as net_profit
from delivery_and_sales_details
group by State;    
/*
  State             total_sales     total_expense     total_turnover       net_profit
Andhra Pradesh	    54114864.66	     34517222.48	  47431986.98	      12914764.5
Odisha	            30521941.19	     19043637.21	  26390054.98	       7346417.77
Manipur	            32782727.37      20685662.06	  28436630.08  	       7750968.02  
Nagaland	        54590981.41	     35001254.86	  47585446.93	      12584192.07
Uttar Pradesh	    62349011.06	     39359118.62	  53650311.1	      14291192.48
Rajasthan	        30855461.86	     19684860.17	  27117351.61	       7432491.44
Punjab	            10314943.72	      6472497.02	   8991240.31	       2518743.29
Himachal Pradesh	40083233.83	     24869891.34	  35097798.68	      10227907.34
Maharashtra	        64553238.89	     41360176.49	  55370502.71	      14010326.22
Tripura	            20436381.75	     12811010.91	  17589772.72	       4778761.81
Karnataka	        43753405.31	     27650017.91	  37997446.15	      10347428.24
Kerala	            91930993.35	     58290622.78	  79040263.31	      20749640.53
West Bengal	        62232784.45	     39222371.58	  54742534.38	      15520162.8
Gujarat	            28708738.92	     17716069.42	  24938135.59	       7222066.17
Chandigarh	         9720988.4	      6181052.75	   8554461.52	       2373408.77
Jharkhand        	10220518.77	      6462685.04	   8739183.14	       2276498.1
Delhi	            10735425.88	      6984017.39	   9413994.69	       2429977.3
Goa	                22480190.8	     14404538.91	  19640273.81	       5235734.9
Haryana	            11155238	      7066971.23	   9919922.7	       2852951.47
Kashmir	            12382364.22	      8010173.46	  10734475.63	       2724302.17
*/ 

#26 Which are the top 10 states that recorded the highest sales,cost, revenue, and profit?
select State,
	round(sum(Sales),5) as total_sales
from delivery_and_sales_details
group by State 
order by total_sales desc
limit 10;
/* Sales report
Kerala	          9,19,30,993.35
Bihar	          6,94,86,776.77
Maharashtra	      6,45,53,238.89
Uttar Pradesh	  6,23,49,011.06
West Bengal	      6,22,32,784.45
Tamil Nadu	      6,08,07,463.7
Nagaland	      5,45,90,981.41
Andhra Pradesh	  5,41,14,864.66
Telangana	      4,98,06,431.48
Karnataka	      4,37,53,405.31
*/
select State,
	round(sum(Cost),5) as total_expense
from delivery_and_sales_details
group by State 
order by total_expense desc
limit 10;
/* Cost report
Kerala      	 5,82,90,622.78
Bihar	         4,33,20,891.26
Maharashtra  	 4,13,60,176.49
Uttar Pradesh	 3,93,59,118.62
West Bengal	     3,92,22,371.58
Tamil Nadu	     3,87,84,377.3
Nagaland	     3,50,01,254.86
Andhra Pradesh	 3,45,17,222.48
Telangana	     3,17,64,123.02
Karnataka	     2,76,50,017.91
*/
select State,
	round(sum(Revenue),5) as total_turnover
from delivery_and_sales_details
group by State 
order by total_turnover desc
limit 10;
/* Revenue report
Kerala	          7,90,40,263.31
Bihar	          6,07,53,055.98
Maharashtra	      5,53,70,502.71
West Bengal	      5,47,42,534.38
Uttar Pradesh	  5,36,50,311.1
Tamil Nadu	      5,28,54,531.76
Nagaland	      4,75,85,446.93
Andhra Pradesh	  4,74,31,986.98
Telangana	      4,24,69,899.26
Karnataka	      3,79,97,446.15
*/
select State,
	round(sum(Profit),5) as net_profit
from delivery_and_sales_details
group by State 
order by net_profit desc
limit 10;
/* Profit report
Kerala	          2,07,49,640.53
Bihar	          1,74,32,164.72
West Bengal	      1,55,20,162.8
Uttar Pradesh	  1,42,91,192.48
Tamil Nadu	      1,40,70,154.46
Maharashtra	      1,40,10,326.22
Andhra Pradesh	  1,29,14,764.5
Nagaland	      1,25,84,192.07
Telangana	      1,07,05,776.24
Karnataka	      1,03,47,428.24

The report shows that the top 10 states are similar in terms of sales, cost, revenue, and profit, 
indicating that these metrics are broadly consistent across states
*/

#27 How many products have delivery charges above ₹300 and below ₹300?
select
    count(Category) as high_delivery_charge_count
from product_details pd
join delivery_and_sales_details ds
    on pd.Id_number = ds.Id_number
where ds.Delivery_Charge >= 300;
#Report above ₹300 is 1486
select
    count(Category) as high_delivery_charge_count
from product_details pd
join delivery_and_sales_details ds
    on pd.Id_number = ds.Id_number
where ds.Delivery_Charge < 300;
#Report below ₹300 is 36,694

#28 Which are the top 10 sub-category products with the highest delivery charges, and what is the count for each?
select
    pd.Sub_category,
    count(*) as product_count
from product_details pd
join delivery_and_sales_details ds
    on pd.Id_number = ds.Id_number
where ds.Delivery_Charge > 300
group by pd.Sub_category
order by product_count desc
limit 10;
/* Report
Mobile Phone	93
Car	            76
Cloth	        62
Watch      	    59
Television	    58
Laptop	        55
Shoes	        41
Smartwatch	    38
Lift Jack	    36
Table	        35
*/

#28 Which products recorded the highest sales, cost, revenue, and profit based on category?
select
    pd.Category,
    round(sum(Sales),5) as total_sales,
    round(sum(Cost),5) as total_expense,
    round(sum(Revenue),5) as total_turnover,
	round(sum(Profit),5) as net_profit
from product_details pd
join delivery_and_sales_details ds
    on pd.Id_number = ds.Id_number
group by pd.Category
order by total_sales desc;
/*   Category                 total_sales          total_expense          total_turnover         net_profit
Electronics & Gadgets	   23,94,94,361.83	      15,17,66,308.99	     20,76,73,814.29   	   5,59,07,505.3
Fashion & Accessories	   16,52,11,400.41	      10,44,30,272.54	     14,45,24,344.37	   4,00,94,071.83
Personal Care & Beauty	   11,09,19,924.05	       7,07,53,479.65	     9,59,02,937.38	       2,51,49,457.73
Home & Furniture	        9,29,07,455.06	       5,85,65,164.38	     7,98,48,632.02	       2,12,83,467.64
Kitchen & Household	        9,26,44,942.28	       5,83,58,748.93	     8,12,44,357.42	       2,28,85,608.49
Vehicles & Accessories  	8,88,32,767.57	       5,58,64,286.2	     7,68,54,069.79	       2,09,89,783.59
Entertainment & Books	    7,57,74,199.35	       4,86,42,774.48	     6,57,39,496.24	       1,70,96,721.76
Snacks & Miscellaneous	    5,53,53,843.22	       3,47,56,658.93	     4,74,93,783.86    	   1,27,37,124.93
*/

#29 Which are the top 10 products that recorded the highest sales, cost, revenue, and profit based on subcategory?
select
    pd.Sub_category,
    round(sum(ds.Sales),5) as total_sales
from product_details pd
join delivery_and_sales_details ds
    on pd.Id_number = ds.Id_number
group by pd.Sub_category
order by total_sales desc
limit 10;
/* Sales report
Mobile Phone	 5,89,56,927.94
Television	     3,97,43,581.95
Cloth	         3,96,96,730.08
Car	             3,80,49,408.58
Laptop  	     3,43,41,201.86
Watch	         3,43,39,408.59
Headphones	     2,16,72,795.53
Makeup	         2,13,10,753.14
Home Curtain	 2,11,01,385.29
Table	         2,04,71,571.8
*/
select
   pd.Sub_category,
   round(sum(ds.Cost),5)  as total_expense
from product_details pd
join delivery_and_sales_details ds
    on pd.Id_number = ds.Id_number
group by pd.Sub_category
order by total_expense  desc
limit 10;
/* Cost report
Mobile Phone	 3,71,00,940.91
Television	     2,54,69,708.72
Cloth	         2,48,17,539.96
Car	             2,37,16,164.09
Laptop	         2,18,80,150.26
Watch	         2,18,00,413.12
Headphones	     1,38,81,686.69
Makeup	         1,36,95,597.86
Home Curtain	 1,33,36,095.88
Table	         1,28,05,360.25
*/
select
    pd.Sub_category,
    round(sum(ds.Revenue),5) total_turnover
from product_details pd
join delivery_and_sales_details ds
    on pd.Id_number = ds.Id_number
group by pd.Sub_category
order by total_turnover desc
limit 10;
/* Revenue report
Mobile Phone	 5,11,84,084
Television	     3,46,70,208.55
Cloth	         3,42,31,018.32
Car	             3,29,32,979.06
Watch            3,01,80,662.97
Laptop	         2,95,54,835.71
Headphones	     1,87,45,135.89
Home Curtain	 1,81,61,255.84
Rice	         1,81,20,299.45
Makeup	         1,80,73,666.17
*/
select
    pd.Sub_category,
    round(sum(ds.Profit),5) net_profit
from product_details pd
join delivery_and_sales_details ds
    on pd.Id_number = ds.Id_number
group by pd.Sub_category
order by net_profit desc
limit 10;
/* Profit report
Mobile Phone	  1,40,83,143.09
Cloth	           94,13,478.36
Car  	           92,16,814.97
Television	       92,00,499.83
Watch	           83,80,249.85
Laptop	           76,74,685.45
Rice	           53,23,416.42
Headphones	       48,63,449.2
Home Curtain	   48,25,159.96
Table	           48,19,127.43
*/

#30 Show the count of customers in each age group who preferred Cash on Delivery as the payment method?
select
    cd.Age_group,
    count(ds.Payment_method) as cod_count
from customer_details cd
join delivery_and_sales_details ds
    on cd.Id_number = ds.Id_number
where ds.Payment_method = 'Cash on Delivery'
group by cd.Age_group
order by cod_count desc;
/* Report
Adults	             1426
Middle-aged adults	 1335
Young adults	     1333
Older adults	     1316
Adolescents	          708
Senior adults	      265
*/

#31 Show the count of customers in each age group who preferred EMI as the payment method?
select
    cd.Age_group,
    count(Payment_method) as emi_count
from customer_details cd
join delivery_and_sales_details ds
    on cd.Id_number = ds.Id_number
where ds.Payment_method = 'EMI'
group by cd.Age_group
order by emi_count desc;
/*
Adults	              491
Older adults	      477
Middle-aged adults	  464
Young adults	      407
Adolescents	          213
Senior adults	       91 
*/

#32 How many customers preferred Cash on Delivery and EMI as the payment method?
select count(Payment_method) as cod_count
from delivery_and_sales_details 
where Payment_method = 'Cash on Delivery';
#Cash on Delivery: 6383
select count(Payment_method) as emi_count
from delivery_and_sales_details 
where Payment_method = 'EMI';
#EMI: 2142 

#33 How much sales and profit were generated by customers using EMI?
select round(sum(Sales),3) as total_sales
from delivery_and_sales_details 
where Payment_method = 'EMI';
#Sales: 5,09,78,316.67
select round(sum(Profit),3) as total_profit
from delivery_and_sales_details 
where Payment_method = 'EMI';
#Profit: 1,23,58,576.49

#34 What is the total total sales, expense, turnover and net profit of the business?
select
    round(sum(Sales),3) as total_sales,
    round(sum(Cost),3) as total_expense,
    round(sum(Revenue),3) as total_turnover,
    round(sum(Profit),3) as net_profit
from delivery_and_sales_details;
/*
total_sales: 92,10,45,551.9(₹921.05 million)
	
total_expense: 58,30,78,561.34(₹583.08 million)
	
total_turnover: 79,92,12,129.73(₹799.21 million)

net_profit:	21,61,33,568.39(₹216.13 million)
*/







