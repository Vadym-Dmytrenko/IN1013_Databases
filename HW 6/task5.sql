SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS bill_count
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
GROUP BY s.first_name, s.surname, b.bill_date
HAVING COUNT(b.bill_no) >= 2;

SELECT room_name, COUNT(table_no) AS table_count
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name;


SELECT rt.room_name, SUM(b.bill_total) AS total_bill_amount
FROM restBill b
JOIN restRest_table rt ON b.table_no = rt.table_no
GROUP BY rt.room_name;
 

SELECT hw.first_name, hw.surname, SUM(b.bill_total) AS total_bill_amount
FROM restBill b
JOIN restStaff w ON b.waiter_no = w.staff_no
JOIN restStaff hw ON w.headwaiter = hw.staff_no
GROUP BY hw.first_name, hw.surname
ORDER BY total_bill_amount DESC;


SELECT b.cust_name, AVG(b.bill_total) AS avg_spent
FROM restBill b
GROUP BY b.cust_name
HAVING AVG(b.bill_total) > 400;


SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS bill_count
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
GROUP BY s.first_name, s.surname, b.bill_date
HAVING COUNT(b.bill_no) >= 3;