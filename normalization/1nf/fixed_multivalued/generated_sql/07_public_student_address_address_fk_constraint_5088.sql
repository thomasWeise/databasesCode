-- object: address_fk | type: CONSTRAINT --
-- ALTER TABLE public.student_address DROP CONSTRAINT IF EXISTS address_fk CASCADE;
ALTER TABLE public.student_address ADD CONSTRAINT address_fk FOREIGN KEY (address)
REFERENCES public.address (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

