/* After importing the data, remove the '"' from all the rows*/
/*UPDATE used_car_sales
	SET ["ID"] = REPLACE(["ID"],'"',''),
		["BodyType"] = REPLACE(["BodyType"],'"',''),
		["DriveType"] = REPLACE(["DriveType"],'"',''),
		["Engine"] = REPLACE(["Engine"],'"',''),
		["Make"] = REPLACE(["Make"],'"',''),
		["Mileage"] = REPLACE(["Mileage"],'"',''),
		["Model"] = REPLACE(["Model"],'"',''),
		["NumCylinders"] = REPLACE(["NumCylinders"],'"',''),
		["pricesold"] = REPLACE(["pricesold"],'"',''),
		["Trim"] = REPLACE(["Trim"],'"',''),
		["Year"] = REPLACE(["Year"],'"',''),
		["yearsold"] = REPLACE(["yearsold"],'"',''),
		["zipcode"] = REPLACE(["zipcode"],'"','')

/*Next alter a few columns from their initial data type as this would make analysis easier */
ALTER TABLE dbo.used_car_sales ALTER COLUMN ID bigint
ALTER TABLE dbo.used_car_sales ALTER COLUMN pricesold bigint
ALTER TABLE dbo.used_car_sales ALTER COLUMN yearsold int
ALTER TABLE dbo.used_car_sales ALTER COLUMN Mileage bigint*/

/* Remove rows that contain null values in the price sold column(32 rows)*/
/*DELETE FROM used_car_sales
WHERE pricesold = ''*/

/* Remove rows that contain null values in the NumCylinders column(110 rows)*/
/*DELETE FROM used_car_sales
WHERE NumCylinders=''*/







