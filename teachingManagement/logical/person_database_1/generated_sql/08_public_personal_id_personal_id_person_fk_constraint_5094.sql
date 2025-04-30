-- object: personal_id_person_fk | type: CONSTRAINT --
-- ALTER TABLE public.personal_id DROP CONSTRAINT IF EXISTS personal_id_person_fk CASCADE;
ALTER TABLE public.personal_id ADD CONSTRAINT personal_id_person_fk FOREIGN KEY (person)
REFERENCES public.person (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

