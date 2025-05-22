-- object: parent_mobile_fk | type: CONSTRAINT --
-- ALTER TABLE public.student DROP CONSTRAINT IF EXISTS parent_mobile_fk CASCADE;
ALTER TABLE public.student ADD CONSTRAINT parent_mobile_fk FOREIGN KEY (parent_mobile)
REFERENCES public.parent (parent_mobile) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

