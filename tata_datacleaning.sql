SELECT * FROM casa.tatadata;

-- Changed the datatype of InvoiceDate from text to Datetime while importing csv
-- Create a check that the quantity should not be below 1 unit

select Quantity
from tatadata
order by Quantity;
 
 -- OR
 
 select Quantity
 from tatadata
 where Quantity<1;
 
 delete from tatadata
 where Quantity <1;
 
 -- Create a check that the Unit price should not be below $0
 
 select UnitPrice
 from tatadata
 where UnitPrice<=0;
 
 delete from tatadata
 where UnitPrice<=0;
 
 -- Check if there are any null values
 
 select *
 from tatadata
 where InvoiceNo is null or StockCode is null or Description is null or Quantity
 is null or InvoiceDate is null or UnitPrice is null or CustomerID is null or Country is null;
 
 -- Check for duplicate or spelling mistakes in country
 
 select Country, count(Country)
 from tatadata
 group by Country
 having count(Country) >1;
 
 