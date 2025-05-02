-- object: public.enrolls | type: TABLE --
-- DROP TABLE IF EXISTS public.enrolls CASCADE;
CREATE TABLE public.enrolls (
	student integer NOT NULL,
	course integer NOT NULL,
	CONSTRAINT enrolls_pk PRIMARY KEY (student,course)
);
-- ddl-end --
ALTER TABLE public.enrolls OWNER TO postgres;
-- ddl-end --

