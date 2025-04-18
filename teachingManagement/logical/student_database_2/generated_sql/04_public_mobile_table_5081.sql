-- object: public.mobile | type: TABLE --
-- DROP TABLE IF EXISTS public.mobile CASCADE;
CREATE TABLE public.mobile (
	id serial NOT NULL,
	phone character(11) NOT NULL,
	student character(11) NOT NULL,
	CONSTRAINT mobile_id_pk PRIMARY KEY (id),
	CONSTRAINT mobile_phone_check CHECK (phone ~ '^\d{11}$')
);
-- ddl-end --
ALTER TABLE public.mobile OWNER TO postgres;
-- ddl-end --

