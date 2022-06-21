CREATE SCHEMA "desk_booking";

--
-- DESK
--
CREATE TABLE "desk_booking"."desk" (
    "id" text,
    "floor" int NOT NULL,
    "room" int NOT NULL,
    "bench" int NOT NULL,
    "desk" int NOT NULL,
    PRIMARY KEY ("id")
);

INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R1B1D1', 1, 1, 1, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R1B1D2', 1, 1, 1, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R1B1D3', 1, 1, 1, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R1B1D4', 1, 1, 1, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R1B1D5', 1, 1, 1, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R1B2D1', 1, 1, 2, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R1B2D2', 1, 1, 2, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R1B2D3', 1, 1, 2, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B1D1', 1, 2, 1, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B1D2', 1, 2, 1, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B1D3', 1, 2, 1, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B1D4', 1, 2, 1, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B1D5', 1, 2, 1, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B2D1', 1, 2, 2, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B2D2', 1, 2, 2, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B2D3', 1, 2, 2, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B2D4', 1, 2, 2, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B2D5', 1, 2, 2, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B3D1', 1, 2, 3, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B3D2', 1, 2, 3, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B3D3', 1, 2, 3, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B3D4', 1, 2, 3, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R2B3D5', 1, 2, 3, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R4B1D1', 1, 4, 1, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F1R4B1D2', 1, 4, 1, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R1B1D1', 2, 1, 1, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R1B1D2', 2, 1, 1, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R1B1D3', 2, 1, 1, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R1B1D4', 2, 1, 1, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R1B2D1', 2, 1, 2, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R1B2D2', 2, 1, 2, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R1B2D3', 2, 1, 2, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B1D1', 2, 2, 1, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B1D2', 2, 2, 1, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B1D3', 2, 2, 1, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B1D4', 2, 2, 1, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B1D5', 2, 2, 1, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B2D1', 2, 2, 2, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B2D2', 2, 2, 2, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B2D3', 2, 2, 2, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B2D4', 2, 2, 2, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B2D5', 2, 2, 2, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B3D1', 2, 2, 3, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B3D2', 2, 2, 3, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B3D3', 2, 2, 3, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B3D4', 2, 2, 3, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F2R2B3D5', 2, 2, 3, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R1B1D1', 3, 1, 1, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R1B1D2', 3, 1, 1, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R1B1D3', 3, 1, 1, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R1B1D4', 3, 1, 1, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R1B1D5', 3, 1, 1, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R1B2D1', 3, 1, 2, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R1B2D2', 3, 1, 2, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R1B2D3', 3, 1, 2, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R1B2D4', 3, 1, 2, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B1D1', 3, 2, 1, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B1D2', 3, 2, 1, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B1D3', 3, 2, 1, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B1D4', 3, 2, 1, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B1D5', 3, 2, 1, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B2D1', 3, 2, 2, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B2D2', 3, 2, 2, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B2D3', 3, 2, 2, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B2D4', 3, 2, 2, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B2D5', 3, 2, 2, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B3D1', 3, 2, 3, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B3D2', 3, 2, 3, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B3D3', 3, 2, 3, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B3D4', 3, 2, 3, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F3R2B3D5', 3, 2, 3, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R1B1D1', 4, 1, 1, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R1B1D2', 4, 1, 1, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R1B1D3', 4, 1, 1, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R1B1D4', 4, 1, 1, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R1B1D5', 4, 1, 1, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R1B1D6', 4, 1, 1, 6);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R1B2D1', 4, 1, 2, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R1B2D2', 4, 1, 2, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R1B3D1', 4, 1, 3, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R1B3D2', 4, 1, 3, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B1D1', 4, 2, 1, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B1D2', 4, 2, 1, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B1D3', 4, 2, 1, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B1D4', 4, 2, 1, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B1D5', 4, 2, 1, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B2D1', 4, 2, 2, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B2D2', 4, 2, 2, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B2D3', 4, 2, 2, 3);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B2D4', 4, 2, 2, 4);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B2D5', 4, 2, 2, 5);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B3D1', 4, 2, 3, 1);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B3D2', 4, 2, 3, 2);
INSERT INTO "desk_booking"."desk" (id, floor, room, bench, desk) VALUES ('F4R2B3D3', 4, 2, 3, 3);

--
-- BOOKING REFERENCE
--
CREATE SEQUENCE "desk_booking".booking_reference_id_seq;

CREATE TABLE desk_booking.booking_reference (
    id integer DEFAULT nextval('desk_booking.booking_reference_id_seq'::regclass) PRIMARY KEY
);

CREATE UNIQUE INDEX IF NOT EXISTS booking_reference_pkey ON desk_booking.booking_reference(id int4_ops);

--
-- BOOKING
--
CREATE TABLE "desk_booking"."booking" (
    "date" date NOT NULL,
    "login" text NOT NULL,
    "desk" text REFERENCES desk_booking.desk(id) ON UPDATE CASCADE,
    reference integer REFERENCES desk_booking.booking_reference(id),
    PRIMARY KEY ("date", "desk"),
    UNIQUE ("date", "login")
);

CREATE UNIQUE INDEX IF NOT EXISTS booking_pkey ON desk_booking.booking(date date_ops,desk text_ops);

--
-- ADMIN
--
CREATE TABLE "desk_booking"."admin" (
    "login" text,
    PRIMARY KEY ("login")
);

CREATE UNIQUE INDEX IF NOT EXISTS admin_pkey ON desk_booking.booking(login);
