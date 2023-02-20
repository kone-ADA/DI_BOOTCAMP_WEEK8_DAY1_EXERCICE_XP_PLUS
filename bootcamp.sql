CREATE DATABASE bootcamp
    WITH
    OWNER = postgres
ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


/*creation de la table students*/
CREATE TABLE public.students
(
    id serial NOT NULL,
    last_name character varying(200),
    first_name character varying(100),
    birth_date date,
    PRIMARY KEY (id)
);

ALTER TABLE
IF EXISTS public.students
    OWNER to postgres;

/*insertion dans la table student*/
INSERT INTO public.students
    (
    id, last_name, first_name, birth_date)
VALUES
    (1, 'Benichou', 'Marc', '02/11/1998');
INSERT INTO public.students
    (
    id, last_name, first_name, birth_date)
VALUES
    (2, 'Cohen', 'Yoan', '03/12/2010');
INSERT INTO public.students
    (
    id, last_name, first_name, birth_date)
VALUES
    (3, 'Benichou', 'Lea', '07/27/1987');
INSERT INTO public.students
    (
    id, last_name, first_name, birth_date)
VALUES
    (4, 'Dux', 'Amelia', '04/07/1996');
INSERT INTO public.students
    (
    id, last_name, first_name, birth_date)
VALUES
    (5, 'Grez', 'David', '06/14/2003');
INSERT INTO public.students
    (
    id, last_name, first_name, birth_date)
VALUES
    (6, 'Simpson', 'Omer', '10/03/1980');

/*les differentes requests */

/*Fetch all of the data from the table.*/
SELECT id, last_name, first_name, birth_date
FROM public.students;

/*Fetch all of the students first_names and last_names.*/
SELECT last_name, first_name
FROM public.students;

/*For the following questions, only fetch the first_names and last_names of the students.
Fetch the student which id is equal to 2*/
SELECT last_name, first_name
FROM public.students
WHERE id=2;

/*Fetch the student whose last_name is Benichou AND first_name is Marc*/
SELECT last_name, first_name
FROM public.students
WHERE last_name='Benichou' and first_name='Marc';

/*Fetch the student whose last_name is Benichou OR first_name is Marc*/
SELECT last_name, first_name
FROM public.students
WHERE last_name='Benichou' and first_name='Marc';

/*Fetch the students whose first_names contain the letter a.*/
SELECT last_name, first_name
FROM public.students
WHERE first_name LIKE '%a%';

/*Fetch the students whose first_names start with the letter a.*/
SELECT last_name, first_name
FROM public.students
WHERE first_name LIKE 'a%';

/*Fetch the students whose first_names end with the letter a.*/
SELECT last_name, first_name
FROM public.students
WHERE first_name LIKE '%a';

/*Fetch the students whose second to last letter of their first_names are a (Example: Leah).
*/
SELECT last_name, first_name
FROM public.students
WHERE first_name LIKE '%a_%';

/*Fetch the students whose id’s are equal to 1 AND 3*/
SELECT last_name, first_name
FROM public.students
WHERE id BETWEEN 1 and 3

/*Fetch the students whose birth_dates are equal to or come after 1/01/2000. (show all their info).
*/
SELECT birth_date
FROM public.students
WHERE birth_date = '2000-01-1';
