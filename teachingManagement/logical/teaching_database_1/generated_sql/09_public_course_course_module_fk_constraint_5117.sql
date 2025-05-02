-- object: course_module_fk | type: CONSTRAINT --
-- ALTER TABLE public.course DROP CONSTRAINT IF EXISTS course_module_fk CASCADE;
ALTER TABLE public.course ADD CONSTRAINT course_module_fk FOREIGN KEY (module)
REFERENCES public.module (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

