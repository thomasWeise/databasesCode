-- object: personal_id_id_type_fk | type: CONSTRAINT --
-- ALTER TABLE public.personal_id DROP CONSTRAINT IF EXISTS personal_id_id_type_fk CASCADE;
ALTER TABLE public.personal_id ADD CONSTRAINT personal_id_id_type_fk FOREIGN KEY (id_type)
REFERENCES public.id_type (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

