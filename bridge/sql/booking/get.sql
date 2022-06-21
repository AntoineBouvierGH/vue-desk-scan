WITH bookings AS (
    SELECT
        min(date) AS begin_date,
        max(date) AS end_date,
        desk AS desk_id,
        login
    FROM
    "desk_booking".booking
    <??CONDITION
        IF (<??all??> == false) THEN
    WHERE login = <!!_user_login!!>
        ENDIF
    CONDITION??>
    GROUP BY login, desk, reference
)
SELECT
    begin_date,
    end_date,
    bookings.desk_id AS id,
    floor,
    room,
    bench,
    desk.desk,
    login
FROM bookings
JOIN "desk_booking".desk
    ON bookings.desk_id = desk.id
ORDER BY begin_date
