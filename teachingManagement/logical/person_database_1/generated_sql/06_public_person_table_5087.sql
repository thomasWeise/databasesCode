-- object: public.person | type: TABLE --
-- DROP TABLE IF EXISTS public.person CASCADE;
CREATE TABLE public.person (
	id integer NOT NULL DEFAULT nextval('public.person_id_counter'::regclass),
	person_id integer NOT NULL,
	CONSTRAINT person_id_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.person OWNER TO postgres;
-- ddl-end --

