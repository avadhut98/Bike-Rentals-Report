WITH Bike_Share AS
(SELECT * FROM [dbo].[bike_share_yr_0]
UNION 
SELECT * FROM [dbo].[bike_share_yr_1])

SELECT
	dteday,
	season,
	b.yr,
	weekday,
	hr,
	rider_type,
	riders,
	price,
	COGS,
	riders*price AS revenue,
	riders*price - COGS*riders AS profit
FROM Bike_Share b 
LEFT JOIN [dbo].[cost_table] c 
ON b.yr = c.yr

