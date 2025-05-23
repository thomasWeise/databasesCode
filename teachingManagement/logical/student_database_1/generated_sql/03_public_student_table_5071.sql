-- object: public.student | type: TABLE --
-- DROP TABLE IF EXISTS public.student CASCADE;
CREATE TABLE public.student (
	student_id character(11) NOT NULL,
	national_id character(18) NOT NULL,
	name varchar(255) NOT NULL,
	address varchar(255) NOT NULL,
	mobile character(11) NOT NULL,
	date_of_birth date NOT NULL,
	CONSTRAINT student_student_id_pk PRIMARY KEY (student_id),
	CONSTRAINT student_national_id_check CHECK (national_id ~ '^\d{6}((19)|(20))\d{9}[0-9X]$'),
	CONSTRAINT student_mobile_check CHECK (mobile ~ '^\d{11}$'),
	CONSTRAINT student_date_of_birth_check CHECK ((date_of_birth > '1900-01-01') AND (date_of_birth < '2100-01-01')),
	CONSTRAINT student_name_check CHECK (name ~ '^\S+.*\S+$')
);
-- ddl-end --
ALTER TABLE public.student OWNER TO postgres;
-- ddl-end --

