use classicmodels;

--- Top 5 opportunities
CREATE TABLE opportunity AS
SELECT opportunity_name,revenue_amount
FROM opportunity_tableau
WHERE stage NOT IN ('Closed Won', 'Closed Lost')
ORDER BY revenue_amount DESC
LIMIT 5;

--- Stage Funnel by Revenue
CREATE TABLE funnelrevenue AS
SELECT stage,
    SUM(revenue_amount) AS total_revenue
FROM opportunity_tableau
GROUP BY stage
ORDER BY total_revenue DESC;

------ No of meeting By Account Exe
CREATE TABLE meetingaccount AS
SELECT `Account Executive` AS Account_Executive,
    COUNT(*) AS Meeting_Count
FROM meeting_tableau
GROUP BY `Account Executive`
ORDER BY Meeting_Count DESC;

--- Yearly Meeting Count
CREATE TABLE yearlymeeting AS
SELECT 
    YEAR(STR_TO_DATE(`Meeting Date`, '%m/%d/%y')) AS Meeting_Year,
    COUNT(*) AS Meeting_Count
FROM  meeting_tableau
GROUP BY YEAR(STR_TO_DATE(`Meeting Date`, '%m/%d/%y'))
ORDER BY Meeting_Year;


------ No of Invoice by Accnt Exec
CREATE TABLE invoiceaccount AS
SELECT `Account Executive`,
    sum(case when income_class='Cross Sell' then 1 else 0 end) as "Cross Sell",
    sum(case when income_class='New' then 1 else 0 end) as "New",
    sum(case when income_class='Renewal' then 1 else 0 end) as "Renewal"
FROM  invoice_tableau
GROUP BY `Account Executive`
ORDER BY  `Account Executive`;

select * from opportunity;
select * from funnelrevenue;
select * from meetingaccount;
select * from yearlymeeting;
select * from invoiceaccount;