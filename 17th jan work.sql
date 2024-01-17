use internship;

desc internship.basiccompanydata_september23;
desc internship.basiccompanydataasonefile;

select s1.CompanyNumber from basiccompanydata_september23 s1 INNER JOIN basiccompanydataasonefile d1 ON s1.CompanyNumber=d1.CompanyNumber;
/* no matching rows between two tables */
select s1.CompanyName from basiccompanydata_september23 s1 INNER JOIN basiccompanydataasonefile d1 ON s1.CompanyName=d1.CompanyName;
/* no company name also matching in both the months */

select count(*) from internship.basiccompanydata_september23; /* 288 */
select count(*) from internship.basiccompanydataasonefile; /* 225 */

select s1.CompanyNumber from basiccompanydata_september23 s1, basiccompanydataasonefile d1 where s1.CompanyNumber=d1.CompanyNumber;
/* no matching rows between two tables */

select count(distinct(CompanyNumber)) from basiccompanydata_september23;
/* by above we can conclude all 288 rows are unique companies*/
select count(distinct(CompanyNumber)) from basiccompanydataasonefile;
/* by above we can conclude all 225 rows are unique companies*/
/* no duplicates */

SELECT DISTINCT CompanyStatus FROM basiccompanydata_september23; /* Active, Active - Proposal to Strike off */
SELECT DISTINCT CompanyStatus FROM basiccompanydataasonefile; /* Active, */

SELECT COUNT(*) FROM basiccompanydata_september23 WHERE CompanyStatus = 'Active'; 
/* 285 active means 3 companies where active-Proposal to Strike off */
SELECT COUNT(*) FROM basiccompanydataasonefile WHERE CompanyStatus = 'Active'; 
/* 225 companies are active means all the companies are active */
