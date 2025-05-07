-- object: student_address_1_fk | type: CONSTRAINT --
-- ALTER TABLE public.student DROP CONSTRAINT IF EXISTS student_address_1_fk CASCADE;
ALTER TABLE public.student ADD CONSTRAINT student_address_1_fk FOREIGN KEY (address_1)
REFERENCES public.address (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

