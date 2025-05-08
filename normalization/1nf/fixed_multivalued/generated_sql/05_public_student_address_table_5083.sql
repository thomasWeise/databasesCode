-- object: public.student_address | type: TABLE --
-- DROP TABLE IF EXISTS public.student_address CASCADE;
CREATE TABLE public.student_address (
	student integer NOT NULL,
	address integer NOT NULL,
	CONSTRAINT student_address_pk PRIMARY KEY (student,address)
);
-- ddl-end --
ALTER TABLE public.student_address OWNER TO postgres;
-- ddl-end --

