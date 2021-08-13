INSERT INTO artist ( name ) VALUES ( 'Kid Cudi' ), ('MGMT'), ('Drake');

SELECT * FROM artist 
Order by name ASC limit 5;

SELECT first_name, last_name
FROM employee Where city = 'Calgary'

SELECT * FROM employee WHERE reports_to = 2; 

SELECT COUNT (*) FROM employee
Where city = 'Lethbridge'

Select Count(*) From invoice 
where billing_country = 'USA'

SELECT MAX(total) From invoice

SELECT MIN(total) From invoice

SELECT * FROM invoice 
WHERE total > 5;

SELECT COUNT(*) FROM invoice
Where total < 5;

SELECT SUM(total) FROM invoice

SELECT * FROM invoice i 
JOIN invoice_line li ON li.invoice_id = i.invoice_id
WHERE li.unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name , e.last_name FROM customer C 
JOIN artist ar ON al.artist_id = ar.artist_id; 

SELECT al.title, ar.name FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;


-- Extra Credit

Select * From artist
Order by name ASC limit 10;

Select  * From artist
Where name like 'Black%'

Select Count(*) From invoice
where billing_state in ('CA', 'TX', 'AZ')

Select AVG(total) From invoice; 

SELECT * FROM playlist_track
WHERE playlist_id IN ( SELECT playlist_id FROM playlist WHERE name = 'Music' ); 

SELECT name
FROM track
WHERE track_id IN ( SELECT track_id FROM playlist_track WHERE playlist_id = 5 );


