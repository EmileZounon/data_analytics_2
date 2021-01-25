--Create a table with the following parameters: CustomerID ,CustomerName, Address,City ,PostalCode, Country, Email

CREATE TABLE practice(
customer_id serial PRIMARY KEY,
customer_name VARCHAR(250) NOT NULL,
address VARCHAR(250) UNIQUE NOT NULL,
postalcode VARCHAR(250) NOT NULL,
country VARCHAR(250) NOT NULL,
email VARCHAR(250) NOT NULL);

--Insert 3 rows of data into these columns using INSERT.  The data you insert should make sense for the column.
INSERT INTO practice(customer_id,customer_name,address,postalcode,country,email)
VALUES(1,'Sherlock Holmes','221B Baker Street','221','United Kingdom','sherlock@detective.com');
INSERT INTO practice(customer_id,customer_name,address,postalcode,country,email)
VALUES(2,'John Watson','unknown','221','United Kingdom','watson@detective.com');
INSERT INTO practice(customer_id,customer_name,address,postalcode,country,email)
VALUES(3,'John Watson','unknown','221','United Kingdom','watson@detective.com');
INSERT INTO practice(customer_id,customer_name,address,postalcode,country,email)
VALUES(4,'Arsene Lupin','Keep looking','010','France','gentlemen@thief.com');

SELECT * FROM practice;
--Use an UPDATE to modify any portion of the data
UPDATE practice
SET address ='Same as Sherlock Holmes'
WHERE customer_name ='John Watson';
--Finally, write a statement to delete one row of data.
DELETE FROM practice WHERE customer_id = 2;
