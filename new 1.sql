update cutomer_table
set Difference_days = 0,
set Rating = 0
where Return_Type = 0;

select Customer_ID, 
sum(case when Return_Type = 1 
then Return_Type
else 0
end) as return_orders, 
count(*) as total_no_orders, 
sum(Amount), 
avg(Difference_days), 
avg(case when Return_Type = 1 
then Rating
else NULL
end) as Rating
from cutomer_table 
group by Customer_ID;