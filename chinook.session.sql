SELECT c.FirstName || ' ' || c.LastName as 'FullName',
    c.CustomerId,
    c.Country
FROM Customer c
WHERE Country != 'USA'
ORDER BY c.country DESC

SELECT c.*
From Customer c
WHERE c.Country = "Brazil"
ORDER by c.Country DESC

SELECT DISTINCT c.*
FROM Customer c
    JOIN Invoice i on c.customerId = i.customerId
WHERE c.Country = "Brazil"

Select DISTINCT e.*
from Employee e
WHERE e.title = 'Sales Support Agent'

SELECT DISTINCT BillingCountry
fROM Invoice

SELECT e.FirstName || ' ' || e.LastName as 'SalesAgent',
 i.InvoiceId,
 i.InvoiceDate
FROM Invoice i
Join Customer c on c.customerId = i.customerId
join Employee e on e.EmployeeId = c.SupportRepId
order by SalesAgent

SELECT e.FirstName || ' ' || e.LastName as 'SalesAgent',
 c.FirstName || ' ' || c.LastName as 'CustomerName',
 i.InvoiceId,
 i.InvoiceDate,
 i.BillingCountry,
 i.Total
FROM Invoice i
Join Customer c on c.customerId = i.customerId
join Employee e on e.EmployeeId = c.SupportRepId
order by SalesAgent

SELECT COUNT(i.InvoiceDate ) 
FROM Invoice i
WHERE i.InvoiceDate Like '2009%'
OR i.InvoiceDate like '2011%'    

SELECT Sum(i.Total) 
FROM Invoice i
WHERE i.InvoiceDate Like '2009%'

SELECT Sum(i.Total) 
FROM Invoice i
WHERE i.InvoiceDate Like '2011%'

select SUBSTR(i.InvoiceDate, 0, 5) as "Year", Count(i.InvoiceId) as "# of Invoices" 
from Invoice i 
where i.InvoiceDate LIKE "2009%" OR i.InvoiceDate LIKE "2011%" 
GROUP BY SUBSTR(i.InvoiceDate, 0, 5);

Select 
(SELECT Sum(i.InvoiceDate)
from invoice i 
WHERE i. InvoiceDate like "2009% as Sales 2009",)

