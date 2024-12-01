SELECT b.cust_name
FROM restBill b
JOIN restStaff w ON b.waiter_no = w.staff_no
JOIN restStaff hw ON w.headwaiter = hw.staff_no
WHERE hw.first_name = 'Charles' AND b.bill_total > 450.00;


SELECT hw.first_name, hw.surname
FROM restBill b
JOIN restStaff w ON b.waiter_no = w.staff_no
JOIN restStaff hw ON w.headwaiter = hw.staff_no
WHERE b.cust_name = 'Nerida Smith' AND b.bill_date = 160111;


SELECT cust_name
FROM restBill
WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);


SELECT s.first_name, s.surname
FROM restStaff s
WHERE s.staff_no NOT IN (SELECT DISTINCT waiter_no FROM restBill);


SELECT b.cust_name, hw.first_name AS headwaiter_first_name, hw.surname AS headwaiter_surname, rt.room_name
FROM restBill b
JOIN restRest_table rt ON b.table_no = rt.table_no
JOIN restStaff w ON b.waiter_no = w.staff_no
JOIN restStaff hw ON w.headwaiter = hw.staff_no
WHERE b.bill_total = (SELECT MAX(bill_total) FROM restBill);