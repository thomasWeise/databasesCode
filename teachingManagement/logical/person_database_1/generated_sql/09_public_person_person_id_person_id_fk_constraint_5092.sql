-- object: person_id_person_id_fk | type: CONSTRAINT --
-- ALTER TABLE public.person DROP CONSTRAINT IF EXISTS person_id_person_id_fk CASCADE;
ALTER TABLE public.person ADD CONSTRAINT person_id_person_id_fk FOREIGN KEY (person_id,id)
REFERENCES public.personal_id (id,person) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

