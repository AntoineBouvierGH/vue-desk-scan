WITH days AS (
  SELECT
    generate_series(<!!begin_date!!>::date, <!!end_date!!>::date, '1 day'::interval)::date
  AS day
),
ROWS AS (
  DELETE FROM "desk_booking".booking
<??CONDITION
    IF (<??_user_is_admin??> == 1) THEN
      WHERE login = <!!login!!>
    ELSE
      WHERE login = <!!_user_login!!>
    ENDIF
CONDITION??>
  AND booking.date in (SELECT day FROM days)
  RETURNING 1
)
SELECT count(*) as days
FROM rows;