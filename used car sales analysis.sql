/*This query shows the number of used cars by Manufacturers*/
SELECT Make,COUNT(Make) AS cars
FROM used_car_sales
GROUP BY Make
ORDER BY cars DESC

/*This counts how many cars were sold in those 3 years*/
SELECT yearsold,COUNT(yearsold) as Carsold
FROM used_car_sales
GROUP BY yearsold

/* This query counts the year of production*/
SELECT Year_, COUNT(Year_) as Makeyear
FROM used_car_sales
GROUP BY Year_
ORDER BY Makeyear DESC

/**/
/*This query shows how many drivetypes were sold*/
/*SELECT DriveType, COUNT(DriveType) as Conversion
FROM used_car_sales
GROUP BY DriveType
ORDER BY Conversion DESC*/

/**/
/*This query shows the count of the various models of each manufacturer*/
SELECT TOP(5) Model, COUNT(Model) as Modelcount
FROM used_car_sales
GROUP BY Model
ORDER BY Modelcount DESC


/**/
SELECT BodyType,COUNT(BodyType) as body_type, SUM(pricesold) as total_sale_price
FROM used_car_sales
GROUP BY BodyType
ORDER BY body_type DESC

/**/
SELECT yearsold,SUM(pricesold) AS Total_made
FROM used_car_sales
GROUP BY yearsold
ORDER BY yearsold

/**/
SELECT yearsold,count(pricesold) AS cars_sold
FROM used_car_sales
GROUP BY yearsold
ORDER BY yearsold

/**/
SELECT NumCylinders, COUNT(NumCylinders) AS cylinder_count
FROM used_car_sales
GROUP BY NumCylinders
ORDER BY cylinder_count DESC

/**/
SELECT NumCylinders, SUM(Mileage) AS cylinder_mileage
FROM used_car_sales
GROUP BY NumCylinders
ORDER BY cylinder_mileage DESC

/**/
SELECT BodyType, SUM(Mileage) AS cylinder_mileage
FROM used_car_sales
GROUP BY BodyType
ORDER BY cylinder_mileage DESC

/**/
SELECT BodyType, COUNT(BodyType) AS body_count
FROM used_car_sales
WHERE  Mileage > 1000 AND Mileage < 10000
GROUP BY BodyType
order by body_count DESC

/**/
SELECT Year_, COUNT(Year_) AS Production_Year
FROM used_car_sales
GROUP BY Year_
ORDER BY Production_Year DESC




