use internship;
  
SELECT * FROM internship.basiccompanydata_september23;
SET SQL_SAFE_UPDATES = 0;
UPDATE basiccompanydata_september23 SET IncorporationDate = STR_TO_DATE(IncorporationDate, '%d/%m/%Y');
select * from internship.basiccompanydata_september23;
DELETE FROM internship.basiccompanydata_september23 WHERE YEAR(IncorporationDate) != 2023 OR MONTH(IncorporationDate) != 9;
select * from internship.basiccompanydata_september23;
select count(*) from internship.basiccompanydata_september23;

