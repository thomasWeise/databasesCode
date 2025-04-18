-- object: mobile_student_id_fk | type: CONSTRAINT --
-- ALTER TABLE public.mobile DROP CONSTRAINT IF EXISTS mobile_student_id_fk CASCADE;
ALTER TABLE public.mobile ADD CONSTRAINT mobile_student_id_fk FOREIGN KEY (student)
REFERENCES public.student (student_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

