-- object: public.id_type | type: TABLE --
-- DROP TABLE IF EXISTS public.id_type CASCADE;
CREATE TABLE public.id_type (
	id integer NOT NULL GENERATED ALWAYS AS IDENTITY ,
	name varchar(100) NOT NULL,
	validation_regexp varchar(255) NOT NULL DEFAULT '.+',
	CONSTRAINT id_type_id_pk PRIMARY KEY (id),
	CONSTRAINT id_type_name_uq UNIQUE (name)
);
-- ddl-end --
ALTER TABLE public.id_type OWNER TO postgres;
-- ddl-end --

