-- object: public.building | type: TABLE --
-- DROP TABLE IF EXISTS public.building CASCADE;
CREATE TABLE public.building (
	building_number varchar(4) NOT NULL,
	building_name varchar(100) NOT NULL,
	address varchar(100) NOT NULL,
	CONSTRAINT building_pk PRIMARY KEY (building_number)
);
-- ddl-end --
ALTER TABLE public.building OWNER TO postgres;
-- ddl-end --

