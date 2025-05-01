-- object: has_id_id_type_fk | type: CONSTRAINT --
-- ALTER TABLE public.has_id DROP CONSTRAINT IF EXISTS has_id_id_type_fk CASCADE;
ALTER TABLE public.has_id ADD CONSTRAINT has_id_id_type_fk FOREIGN KEY (id_type)
REFERENCES public.id_type (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

