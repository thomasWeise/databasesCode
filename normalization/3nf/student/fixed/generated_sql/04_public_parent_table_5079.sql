-- object: public.parent | type: TABLE --
-- DROP TABLE IF EXISTS public.parent CASCADE;
CREATE TABLE public.parent (
	parent_mobile character(11) NOT NULL,
	parent_name varchar(100) NOT NULL,
	CONSTRAINT parent_mobile_pk PRIMARY KEY (parent_mobile)
);
-- ddl-end --
ALTER TABLE public.parent OWNER TO postgres;
-- ddl-end --

