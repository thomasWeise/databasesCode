-- object: building_fk | type: CONSTRAINT --
-- ALTER TABLE public.room DROP CONSTRAINT IF EXISTS building_fk CASCADE;
ALTER TABLE public.room ADD CONSTRAINT building_fk FOREIGN KEY (building_number)
REFERENCES public.building (building_number) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

