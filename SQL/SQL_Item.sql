
--Overall
Select * from Item

--Type of Item Purchase
select ItemPurchase
from Item
group by ItemPurchase
--Type of Category
select Category
from Item
group by Category

-- satyfy item purchase
select ItemPurchase, count(ItemPurchase) as total_item_purchased
from Item
group by ItemPurchase

-- Top 5 Best-Selling Items
select top 5 ItemPurchase, count(ItemPurchase) as Total
from Item
group by ItemPurchase
order by Total DESC

--Top 5 Least-Selling Items
select top 5 ItemPurchase, count(ItemPurchase) as Total
from Item
group by ItemPurchase
order by Total ASC

--Frequency of Purchases by Season
select Season, COUNT(ItemPurchase) as Total_Itempurchase
from Item
group by Season

--
select Category, Round(AVG(ReviewRating),2) as Avg_ReviewRating
from Item
Group by Category

--- top 5 Review Rating Item
select top 5 ItemPurchase, 
		ROUND(AVG(ReviewRating),2) as Agv_ReviewRating
from Item
group by ItemPurchase
order by Agv_ReviewRating DESC

-- Calculate the average purchase amount
Select ItemPurchase, AVG(PurchaseAmount) as Avg_PurchaseAmount
from Item
group by ItemPurchase
order by Avg_PurchaseAmount DESC

--- Best-Selling Products by Season
with total_item
as
(
	select ItemPurchase,Season , count(ItemPurchase) as Total 
	from Item
	group by ItemPurchase,Season
),
rank_item
as
(
	select Season,ItemPurchase, Total,
			RANK() OVER (Partition by Season order by Total DESC) AS rnk
	from total_item
)
select Season,ItemPurchase,Total
from rank_item
where rnk = 1

---Trending of Payment Method
select PaymentMethod, COUNT(PaymentMethod)
from Item
group by PaymentMethod

