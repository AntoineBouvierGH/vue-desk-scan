WITH reference_value AS (
    INSERT INTO "desk_booking".booking_reference DEFAULT VALUES RETURNING id),
    rows AS (
        INSERT INTO "desk_booking".booking (date, login, desk, reference)
        SELECT
            generate_series(<!!begin_date!!>::date, <!!end_date!!>::date, '1 day'::interval)::date,
            <!!_user_login!!>,
            <!!desk!!>,
            id FROM reference_value
            WHERE <!!begin_date!!>::date >= CURRENT_DATE
            AND (<!!end_date!!>::date - <!!begin_date!!>::date) < 5
            AND EXTRACT(ISODOW FROM <!!begin_date!!>::date) NOT IN (6, 7)
            AND EXTRACT(ISODOW FROM <!!end_date!!>::date) NOT IN (6, 7)
        RETURNING 1
    )
SELECT count(*) as days
FROM rows;
