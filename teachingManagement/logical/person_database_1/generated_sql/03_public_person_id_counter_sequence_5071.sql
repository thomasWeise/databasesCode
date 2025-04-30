-- object: public.person_id_counter | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.person_id_counter CASCADE;
CREATE SEQUENCE public.person_id_counter
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.person_id_counter OWNER TO postgres;
-- ddl-end --

