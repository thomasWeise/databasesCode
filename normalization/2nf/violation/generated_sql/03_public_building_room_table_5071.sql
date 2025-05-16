-- object: public.building_room | type: TABLE --
-- DROP TABLE IF EXISTS public.building_room CASCADE;
CREATE TABLE public.building_room (
	building_number varchar(4) NOT NULL,
	room_number varchar(4) NOT NULL,
	building_name varchar(100) NOT NULL,
	room_name varchar(100) NOT NULL,
	capacity integer NOT NULL,
	address varchar(100) NOT NULL,
	CONSTRAINT br_pk PRIMARY KEY (building_number,room_number)
);
-- ddl-end --
ALTER TABLE public.building_room OWNER TO postgres;
-- ddl-end --

