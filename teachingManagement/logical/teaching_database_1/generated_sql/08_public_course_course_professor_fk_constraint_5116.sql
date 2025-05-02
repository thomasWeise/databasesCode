-- object: course_professor_fk | type: CONSTRAINT --
-- ALTER TABLE public.course DROP CONSTRAINT IF EXISTS course_professor_fk CASCADE;
ALTER TABLE public.course ADD CONSTRAINT course_professor_fk FOREIGN KEY (professor)
REFERENCES public.professor (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

