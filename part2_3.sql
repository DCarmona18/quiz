/*PART II

1. With the carlos_1 create the next table (DON'T CHANGE THE NAME OF THE TABLE NOR COLUMNS: 

create table icfes (
	tipo_documento 	varchar2(255),
	nacionalidad		varchar2(255),
	genero					varchar2(255),
	fecha_nacimiento	date,
	periodo					varchar2(255),
	consecutivo			varchar2(255),
	departamento_residencia	varchar2(255),
	codigo_departamento_residencia	integer,
	municipio_residencia		varchar2(255),
	codigo_municipio_residencia	varchar2(255),
	estrato					varchar2(255),
	educacion_padre	varchar2(255),
	educacion_madre	varchar2(255),
	tiene_internet	varchar2(255),
	tiene_tv				varchar2(255),
	tiene_lavadora	varchar2(255),
	tiene_horno_micro_o_gas	varchar2(255),
	tiene_automovil	varchar2(255),
	tiene_motocicleta	varchar2(255),
	tiene_consola_videojuegos	varchar2(255),
	colegio_codigo_icfes	varchar2(255),
	colegio_codigo_dane		varchar2(255),
	colegio_nombre				varchar2(255),
	puntaje_lectura_critica	integer,
	puntaje_matematicas		integer,
	puntaje_ciencias_naturales	integer,
	puntaje_sociales			integer,
	puntaje_ingles				integer,
	desempeno_ingles			varchar2(255),
	puntaje_global				integer
);


2. Import this data: https://www.datos.gov.co/api/views/w42r-j8f9/rows.csv?accessType=DOWNLOAD
3. Give permission to view table "icfes" of the user2 (Do selects)*/

/*PART III

Queries: 

1. SHOW THE GENRE, DATE OF BIRTH, SEQUENCE (CONSECUTIVO), MUNICIPIO, GLOBAL SCORE (PUNTAJE GLOBAL) WITH THE HIGHEST GLOBAL SCORE (ONE QUERY)
2. SHOW THE GENRE, DATE OF BIRTH, SEQUENCE (CONSECUTIVO), MUNICIPIO, GLOBAL SCORE (PUNTAJE GLOBAL) OF THE STUDENTS WHICH HAVE A C IN DESEMPEÑO OF ENGLISH
3. COUNT THE NUMBER COLEGIO_NOMBRE WITHOUT REPETITION (UNIQUE VALUES) OF THE STUDENTS
4. COUNT THE NUMBER OF STUDENTS WHICH ARE LOCATED IN MONTERÍA*/
SELECT GENERO, FECHA_NACIMIENTO, CONSECUTIVO, MUNICIPIO_RESIDENCIA, PUNTAJE_GLOBAL
FROM icfes 
ORDER BY PUNTAJE_GLOBAL desc;

SELECT GENERO, FECHA_NACIMIENTO, CONSECUTIVO, MUNICIPIO_RESIDENCIA, PUNTAJE_GLOBAL
FROM icfes 
WHERE icfes.DESEMPENO_INGLES = 'C';

SELECT COLEGIO_NOMBRE, COUNT(1)
FROM icfes 
GROUP BY COLEGIO_NOMBRE;

SELECT count(1)
FROM icfes 
WHERE MUNICIPIO_RESIDENCIA = 'MONTERÍA';