-- object: name_person_fk | type: CONSTRAINT --
-- ALTER TABLE public.name DROP CONSTRAINT IF EXISTS name_person_fk CASCADE;
ALTER TABLE public.name ADD CONSTRAINT name_person_fk FOREIGN KEY (person)
REFERENCES public.person (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

