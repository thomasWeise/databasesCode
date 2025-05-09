-- object: public.personal_id | type: TABLE --
-- DROP TABLE IF EXISTS public.personal_id CASCADE;
CREATE TABLE public.personal_id (
	id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ,
	id_type integer NOT NULL,
	person integer NOT NULL,
	value varchar(100) NOT NULL,
	valid_from date NOT NULL,
	valid_to date,
	CONSTRAINT personal_id_id_pk PRIMARY KEY (id),
	CONSTRAINT person_id_id_person_uq UNIQUE (id,person)
);
-- ddl-end --
ALTER TABLE public.personal_id OWNER TO postgres;
-- ddl-end --

