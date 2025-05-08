-- object: student_fk | type: CONSTRAINT --
-- ALTER TABLE public.student_address DROP CONSTRAINT IF EXISTS student_fk CASCADE;
ALTER TABLE public.student_address ADD CONSTRAINT student_fk FOREIGN KEY (student)
REFERENCES public.student (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

