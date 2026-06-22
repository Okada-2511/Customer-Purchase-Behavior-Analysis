CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(10),
    SubscriptionStatus VARCHAR(20),
    PreviousPurchases INT,
    FrequencyOfPurchases VARCHAR(20),
    Locationn VARCHAR(100)
);
CREATE TABLE Item (
    ItemPurchase VARCHAR(50),
    Size VARCHAR(10),
    Color VARCHAR(20),
    Category VARCHAR(50),
    Season VARCHAR(20),
    ReviewRating DECIMAL(3,2),
    PurchaseAmount DECIMAL(10,2),
    DiscountApplied VARCHAR(10),
    ShippingType VARCHAR(50),
    PaymentMethod VARCHAR(20),
    CustomerID INT,
    CONSTRAINT FK_Item_Customer
        FOREIGN KEY (CustomerID)
        REFERENCES Customer(CustomerID)
);

Bulk insert Customer
From 'C:\Users\USER\Desktop\SQL\archive\customer1.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    TABLOCK
);
Bulk insert Item
From 'C:\Users\USER\Desktop\SQL\archive\item1.csv'
With(
	format = 'CSV',
	FIRSTROW = 2,
	FIELDQUOTE = '"',
    TABLOCK
)


Select * from Customer


--top 10 customer have the most previouspurchases
Select top 10 CustomerID , PreviousPurchases
from Customer
order by PreviousPurchases DESC

--the customers do not purchase previously
select CustomerID
from Customer
where PreviousPurchases = 0

-- Satisfy Gender of customer
select	Gender,count(CustomerID) as total_gender
from Customer
group by Gender

-- Age Average of the customers
select AVG(Age) as AgeAVG
from Customer

-- Frequency of Pruchases of the customers
Select FrequencyOfPurchases, Count(CustomerID) as total
from Customer
where FrequencyOfPurchases is not null
group by FrequencyOfPurchases

--
select top 5 Locationn, count(CustomerID)as total
from Customer
group by Locationn
order by total DESC


--Customer segmentation

with CustomerSegment 
as
(
	select
		case
			when Age between 18 and 24 then 'Gen Z'
			when Age between 25 and 34 then 'Young Adults'
			when Age between 35 and 44 then 'Middle Age'
			Else 'Seniors'
	End as CS , CustomerID
	from Customer
)
select CS, COUNT(CustomerID) as total
from CustomerSegment
Group by  CS

---
with CustomerSegment
as
(
	select
	case 
		when Age between 18 and 24 then 'Gen Z'
		when Age between 25 and 34 then 'Young Adults'
		when Age between 35 and 44 then 'Middle Age'
		Else 'Seniors'
	end as CS, CustomerID, FrequencyOfPurchases
	from Customer
)
select CS, COUNT(FrequencyOfPurchases) as FrequencyOfPurchases
from CustomerSegment
group by CS

