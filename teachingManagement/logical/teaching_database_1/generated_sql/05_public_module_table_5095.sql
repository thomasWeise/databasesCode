-- object: public.module | type: TABLE --
-- DROP TABLE IF EXISTS public.module CASCADE;
CREATE TABLE public.module (
	id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ,
	title varchar(255) NOT NULL,
	CONSTRAINT module_id_pl PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.module OWNER TO postgres;
-- ddl-end --

