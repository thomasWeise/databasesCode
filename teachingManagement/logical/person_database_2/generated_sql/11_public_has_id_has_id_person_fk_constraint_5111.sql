-- object: has_id_person_fk | type: CONSTRAINT --
-- ALTER TABLE public.has_id DROP CONSTRAINT IF EXISTS has_id_person_fk CASCADE;
ALTER TABLE public.has_id ADD CONSTRAINT has_id_person_fk FOREIGN KEY (person)
REFERENCES public.person (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

