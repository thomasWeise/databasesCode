-- object: enrolls_course_fk | type: CONSTRAINT --
-- ALTER TABLE public.enrolls DROP CONSTRAINT IF EXISTS enrolls_course_fk CASCADE;
ALTER TABLE public.enrolls ADD CONSTRAINT enrolls_course_fk FOREIGN KEY (course)
REFERENCES public.course (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

