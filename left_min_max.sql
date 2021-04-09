#testing for git

#left(), MIN(), MAX()
LEFT()
MIN()
MAX()


#how many rentals by month
SELECT left(r.rental_date, 7), COUNT(r.rental_id)
FROM rental r, 
GROUP by 1
ORDER by 2 DESC;

#min and max rental date by title
SELECT f.title, max(r.rental_date), min(r.rental_date)
FROM rental r, inventory i, film f
GROUP by 1
ORDER by 2 DESC;

#every customers last rental with email address for notification

SELECT concat(c.firstname, " ", c.lastname) as Name, c.email as Email, max(r.rental_date) as 'Last Rental Date'
FROM customer c, rental r
WHERE c.customer_id = r.customer_id
GROUP BY c.customer_id;

# revenue by month
SELECT left(p.payment_date,7) as Month, SUM(p.amount) as 'Monthly Revenue'
FROM payment p
GROUP BY 1
;
