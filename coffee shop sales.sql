create database coffee_shop_sales_db

use coffee_shop_sales_db 
# check the date types all date
describe coffee_shop_sales
# change the data types text to date

update coffee_shop_sales
set transaction_date = STR_TO_DATE(transaction_date, '%d/%m/%Y')
 ALTER TABLE coffee_shop_sales
 modify column transaction_date DATE 
 # change into text  to time

update coffee_shop_sales
set transaction_time = STR_TO_DATE(transaction_time, '%H:%i:%s')
ALTER TABLE coffee_shop_sales
modify column transaction_time TIME

# column name change

ALTER TABLE coffee_shop_sales
CHANGE COLUMN !@$transaction_id transaction_id int

