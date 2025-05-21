-- object: public.student | type: TABLE --
-- DROP TABLE IF EXISTS public.student CASCADE;
CREATE TABLE public.student (
	student_id character(11) NOT NULL,
	student_national_id character(18) NOT NULL,
	student_name varchar(100) NOT NULL,
	parent_name varchar(100) NOT NULL,
	parent_mobile character(11) NOT NULL,
	CONSTRAINT student_id_pk PRIMARY KEY (student_id)
);
-- ddl-end --
ALTER TABLE public.student OWNER TO postgres;
-- ddl-end --

