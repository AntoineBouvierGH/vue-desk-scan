SELECT booking.desk, json_agg(json_build_object('login', login, 'date', date)) as data
FROM "desk_booking".booking
RIGHT JOIN "desk_booking".desk
  ON booking.desk = desk.id
WHERE booking.date between <!!begin_date!!>::date AND <!!end_date!!>::date
  AND floor = <!!floor!!>
GROUP BY booking.desk