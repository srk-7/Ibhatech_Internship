use internship;
  
SELECT * FROM internship.basiccompanydataasonefile;
SELECT count(*) FROM internship.basiccompanydataasonefile;

UPDATE basiccompanydataasonefile SET IncorporationDate = STR_TO_DATE(IncorporationDate, '%d/%m/%Y');
SELECT IncorporationDate FROM internship.basiccompanydataasonefile;

DELETE FROM internship.basiccompanydataasonefile WHERE YEAR(IncorporationDate) != 2023 OR MONTH(IncorporationDate) != 12;
select * from internship.basiccompanydataasonefile;
select count(*) from internship.basiccompanydataasonefile;