CREATE DATABASE nuevaGranada;
USE nuevaGranada;

CREATE TABLE DOCENTE(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(50),
    apellidos VARCHAR(50),
    fechaNacimiento DATE,
    email VARCHAR(50),
    telefono CHAR(10)
);

CREATE TABLE ASIGNATURA(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
);

CREATE TABLE SEMESTRE(
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero_semestre VARCHAR(50)
);

CREATE TABLE ESTUDIANTE(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(50),
    apellidos VARCHAR(50),
    fechaNacimiento DATE,
    email VARCHAR(50),
    telefono VARCHAR(50),
    id_semestre INT,
    FOREIGN KEY (id_semestre) REFERENCES SEMESTRE(id)
);

CREATE TABLE DOCENTE_ASIGNATURA(
    id_asignatura INT,
    id_docente INT,
    FOREIGN KEY (id_asignatura) REFERENCES ASIGNATURA(id),
    FOREIGN KEY (id_docente) REFERENCES DOCENTE(id)
);

CREATE TABLE ASIGNATURA_SEMESTRE(
    id_asignatura INT,
    id_semestre INT,
    FOREIGN KEY (id_asignatura) REFERENCES ASIGNATURA(id),
    FOREIGN KEY (id_semestre) REFERENCES SEMESTRE(id)
);

CREATE TABLE HISTORIAL_NOTAS(
    id_asignatura INT,
    id_estudiante INT,
    nota INT,
    FOREIGN KEY (id_asignatura) REFERENCES ASIGNATURA(id),
    FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANasignaturaasignatura_semestreTE(id)
);