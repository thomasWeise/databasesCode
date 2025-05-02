-- object: enrolls_student_fk | type: CONSTRAINT --
-- ALTER TABLE public.enrolls DROP CONSTRAINT IF EXISTS enrolls_student_fk CASCADE;
ALTER TABLE public.enrolls ADD CONSTRAINT enrolls_student_fk FOREIGN KEY (student)
REFERENCES public.student (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

