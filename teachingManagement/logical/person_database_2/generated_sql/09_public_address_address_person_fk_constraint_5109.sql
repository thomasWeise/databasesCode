-- object: address_person_fk | type: CONSTRAINT --
-- ALTER TABLE public.address DROP CONSTRAINT IF EXISTS address_person_fk CASCADE;
ALTER TABLE public.address ADD CONSTRAINT address_person_fk FOREIGN KEY (person)
REFERENCES public.person (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

