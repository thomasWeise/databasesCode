-- object: public.room | type: TABLE --
-- DROP TABLE IF EXISTS public.room CASCADE;
CREATE TABLE public.room (
	building_number varchar(4) NOT NULL,
	room_number varchar(4) NOT NULL,
	room_name varchar(100) NOT NULL,
	capacity integer NOT NULL,
	CONSTRAINT room_pk PRIMARY KEY (building_number,room_number)
);
-- ddl-end --
ALTER TABLE public.room OWNER TO postgres;
-- ddl-end --

