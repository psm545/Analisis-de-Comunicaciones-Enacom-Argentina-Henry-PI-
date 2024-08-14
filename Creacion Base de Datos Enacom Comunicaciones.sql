USE Enacom_Estudio_Comunicaciones_argentina;

SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL LOCAL_INFILE = 1;




SHOW VARIABLES LIKE "secure_file_priv";
SELECT LOCATE('/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Acc_vel_loc_sinrangos.csv',
'/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Velocidad_sin_Rangos.csv',
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Accesos_Tecnologia_Localidad.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Velocidad % por prov.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Totales VMD.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Totales Accesos Por Tecnología.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Accesos Por Tecnología.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Penetración-poblacion.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Penetracion-hogares.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Penetracion-totales.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Totales Accesos por velocidad.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Accesos por velocidad.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Dial-BAf.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Totales Dial-BAf.csv",
"'/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Ingresos.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TELEFONIA MOVIL/Ingresos.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TELEFONIA MOVIL/Penetracion.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TELEFONIA MOVIL/Accesos.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TELEFONIA FIJA/Fija_Ingresos",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TELEFONIA FIJA/Fija_penetracion_prov",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TV/Ingresos_Tv.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TV/Penetraciones_Totales_Tv.csv",
"/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Mapa_Conectividad/Mapa_Conectividad.csv");

-- SELECT @@global.secure_file_priv; -- Para ver la ruta de origen donde poner los csv.

-- CREACION DE TABLA Acc_vel_loc_sinrnagos

DROP TABLE IF EXISTS Acc_vel_loc_sinrangos;
CREATE TABLE Acc_vel_loc_sinrangos (
    Provincia VARCHAR(255),
    Partido VARCHAR(255),
    Localidad VARCHAR(255),
    Link_Indec VARCHAR(255),
    Otros FLOAT,
    `0,256 Mbps` FLOAT,
    `0,5 Mbps` FLOAT,
    `0,512 Mbps` FLOAT,
    `0,75 Mbps` FLOAT,
    `1 Mbps` FLOAT,
    `2 Mbps` FLOAT,
    `4 Mbps` FLOAT,
    `6 Mbps` FLOAT,
    `8 Mbps` FLOAT,
    `10 Mbps` FLOAT,
    `12 Mbps` FLOAT,
    `15 Mbps` FLOAT,
    `20 Mbps` FLOAT,
    `25 Mbps` FLOAT,
    `30 Mbps` FLOAT,
    `40 Mbps` FLOAT,
    `50 Mbps` FLOAT,
    `60 Mbps` FLOAT,
    `70 Mbps` FLOAT,
    `80 Mbps` FLOAT,
    `100 Mbps` FLOAT,
    `150 Mbps` FLOAT,
    `200 Mbps` FLOAT,
    `300 Mbps` FLOAT,
    `400 Mbps` FLOAT,
    `500 Mbps` FLOAT,
    `600 Mbps` FLOAT,
    `700 Mbps` FLOAT,
    `800 Mbps` FLOAT,
    `850 Mbps` FLOAT,
    `900 Mbps` FLOAT,
    `999 Mbps` FLOAT,
    `1000 Mbps` FLOAT,
    `1024 Mbps` FLOAT,
    `2000 Mbps` FLOAT,
    `4000 Mbps` FLOAT,
    `10000 Mbps` FLOAT
);

-- Carga de csv
LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Acc_vel_loc_sinrangos.csv'
INTO TABLE Acc_vel_loc_sinrangos
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'            
LINES TERMINATED BY '\n'   
IGNORE 1 LINES             
(Provincia, Partido, Localidad, Link_Indec, Otros, `0,256 Mbps`, `0,5 Mbps`, `0,512 Mbps`, `0,75 Mbps`, `1 Mbps`, `2 Mbps`, `4 Mbps`, `6 Mbps`, `8 Mbps`, `10 Mbps`, `12 Mbps`, `15 Mbps`, `20 Mbps`, `25 Mbps`, `30 Mbps`, `40 Mbps`, `50 Mbps`, `60 Mbps`, `70 Mbps`, `80 Mbps`, `100 Mbps`, `150 Mbps`, `200 Mbps`, `300 Mbps`, `400 Mbps`, `500 Mbps`, `600 Mbps`, `700 Mbps`, `800 Mbps`, `850 Mbps`, `900 Mbps`, `999 Mbps`, `1000 Mbps`, `1024 Mbps`, `2000 Mbps`, `4000 Mbps`, `10000 Mbps`);


-- Creacion de la tabla Velocidad_sin_Rangos

CREATE TABLE Velocidad_sin_Rangos (
    Provincia VARCHAR(255),
    Partido VARCHAR(255),
    Localidad VARCHAR(255),
    Link_Indec VARCHAR(255),
    Otros FLOAT,
    `0,256 Mbps` FLOAT,
    `0,5 Mbps` FLOAT,
    `0,512 Mbps` FLOAT,
    `0,75 Mbps` FLOAT,
    `1 Mbps` FLOAT,
    `2 Mbps` FLOAT,
    `3 Mbps` FLOAT,
    `4 Mbps` FLOAT,
    `5 Mbps` FLOAT,
    `6 Mbps` FLOAT,
    `7 Mbps` FLOAT,
    `8 Mbps` FLOAT,
    `10 Mbps` FLOAT,
    `12 Mbps` FLOAT,
    `15 Mbps` FLOAT,
    `20 Mbps` FLOAT,
    `25 Mbps` FLOAT,
    `30 Mbps` FLOAT,
    `40 Mbps` FLOAT,
    `50 Mbps` FLOAT,
    `60 Mbps` FLOAT,
    `70 Mbps` FLOAT,
    `80 Mbps` FLOAT,
    `100 Mbps` FLOAT,
    `150 Mbps` FLOAT,
    `200 Mbps` FLOAT,
    `300 Mbps` FLOAT,
    `400 Mbps` FLOAT,
    `500 Mbps` FLOAT,
    `600 Mbps` FLOAT,
    `700 Mbps` FLOAT,
    `800 Mbps` FLOAT,
    `850 Mbps` FLOAT,
    `900 Mbps` FLOAT,
    `999 Mbps` FLOAT,
    `1000 Mbps` FLOAT,
    `1024 Mbps` FLOAT,
    `2000 Mbps` FLOAT,
    `3000 Mbps` FLOAT,
    `4000 Mbps` FLOAT,
    `5000 Mbps` FLOAT,
    `10000 Mbps` FLOAT
        
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Velocidad_sin_Rangos.csv'
INTO TABLE Velocidad_sin_Rangos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Provincia, Partido, Localidad, Link_Indec, Otros, `0,256 Mbps`, `0,5 Mbps`, `0,512 Mbps`, `0,75 Mbps`, `1 Mbps`, `2 Mbps`, `3 Mbps`, `4 Mbps`, `5 Mbps`, `6 Mbps`, `7 Mbps`, `8 Mbps`, `10 Mbps`, `12 Mbps`, `15 Mbps`, `20 Mbps`, `25 Mbps`, `30 Mbps`, `40 Mbps`, `50 Mbps`, `60 Mbps`, `70 Mbps`, `80 Mbps`, `100 Mbps`, `150 Mbps`, `200 Mbps`, `300 Mbps`, `400 Mbps`, `500 Mbps`, `600 Mbps`, `700 Mbps`, `800 Mbps`, `850 Mbps`, `900 Mbps`, `999 Mbps`, `1000 Mbps`, `1024 Mbps`, `2000 Mbps`, `3000 Mbps`, `4000 Mbps`, `5000 Mbps`, `10000 Mbps`);

-- CREAR TABLA Accesos_tecnologia_localidad

CREATE TABLE AccesosTecnologiaLocalidad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Provincia VARCHAR(255),
    Partido VARCHAR(255),
    Localidad VARCHAR(255),
    Link_Indec VARCHAR(255),
    ADSL INT,
    CABLEMODEM INT,
    DIAL_UP INT,
    FIBRA_OPTICA INT,
    OTROS INT,
    SATELITAL INT,
    WIMAX INT,
    WIRELESS INT,
    Total_general INT
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Accesos_Tecnologia_Localidad.csv'
INTO TABLE AccesosTecnologiaLocalidad
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Provincia, Partido, Localidad, Link_Indec, ADSL, CABLEMODEM, DIAL_UP, FIBRA_OPTICA, OTROS, SATELITAL, WIMAX, WIRELESS, Total_general);

-- CREAR TABLA Velocidad % por prov

CREATE TABLE Velocidad_por_Prov (
    Año INT NOT NULL,
    Trimestre INT NOT NULL,
    Provincia VARCHAR(255) NOT NULL,
    `Mbps (Media de bajada)` FLOAT NOT NULL
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Velocidad % por prov.csv'
INTO TABLE Velocidad_por_Prov
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Año, Trimestre, Provincia, `Mbps (Media de bajada)`);


-- CREAR TABLA Totales VMD

CREATE TABLE Totales_VMD (
    Año INT NOT NULL,
    Trimestre INT NOT NULL,
    `Mbps (Media de bajada)` FLOAT NOT NULL,
    Trimestre_Descripcion VARCHAR(255) NOT NULL
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Totales VMD.csv'
INTO TABLE Totales_VMD
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Año, Trimestre, `Mbps (Media de bajada)`, Trimestre_Descripcion);

-- CREAR TABLA Totales Accesos Por Tecnología

CREATE TABLE Totales_Accesos_Por_Tecnologia (
    Año INT NOT NULL,
    Trimestre INT NOT NULL,
    ADSL BIGINT NOT NULL,
    Cablemodem BIGINT NOT NULL,
    Fibra_optica BIGINT NOT NULL,
    Wireless BIGINT NOT NULL,
    Otros BIGINT NOT NULL,
    Total BIGINT NOT NULL,
    Periodo VARCHAR(255) NOT NULL
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Totales Accesos Por Tecnología.csv'
INTO TABLE Totales_Accesos_Por_Tecnologia
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Año, Trimestre, ADSL, Cablemodem, Fibra_optica, Wireless, Otros, Total, Periodo);

-- CREAR TABLA Accesos Por Tecnología

CREATE TABLE Accesos_Por_Tecnologia (
    Año VARCHAR(4) NOT NULL,
    Trimestre VARCHAR(2) NOT NULL,
    Provincia VARCHAR(50) NOT NULL,
    ADSL FLOAT NOT NULL,
    Cablemodem FLOAT NOT NULL,
    Fibra_optica FLOAT NOT NULL,
    Wireless FLOAT NOT NULL,
    Otros FLOAT NOT NULL,
    Total FLOAT NOT NULL
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Accesos Por Tecnología.csv'
INTO TABLE Accesos_Por_Tecnologia
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Año, Trimestre, Provincia, ADSL, Cablemodem, Fibra_optica, Wireless, Otros, Total);


-- CREACION TABLA Penetración-poblacion
DROP TABLE Penetracion_poblacion;

CREATE TABLE Penetracion_poblacion (
    Año INT NOT NULL,
    Trimestre INT NOT NULL,
    Provincia VARCHAR(255) NOT NULL,
    `Accesos por cada 100 hab` FLOAT NOT NULL
);


LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Penetración-poblacion.csv'
INTO TABLE Penetracion_poblacion
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Año, Trimestre, Provincia, `Accesos por cada 100 hab`);


-- CREACION DE LA TABLA PENTRACION HOGARES

CREATE TABLE Penetracion_hogares (
    Año INT NOT NULL,
    Trimestre INT NOT NULL,
    Provincia VARCHAR(255) NOT NULL,
    `Accesos por cada 100 hogares` FLOAT NOT NULL
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Penetracion-hogares.csv'
INTO TABLE Penetracion_hogares
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Año, Trimestre, Provincia, `Accesos por cada 100 hogares`);

-- Penetracion-totales

CREATE TABLE Penetracion_totales (
    Año INT NOT NULL,
    Trimestre INT NOT NULL,
    `Accesos por cada 100 hogares` FLOAT NOT NULL,
    `Accesos por cada 100 hab` FLOAT NOT NULL,
    Periodo VARCHAR(255) NOT NULL
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Penetracion-totales.csv'
INTO TABLE Penetracion_totales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Año, Trimestre, `Accesos por cada 100 hogares`, `Accesos por cada 100 hab`, Periodo);


-- CREACION TABLA Totales Accesos por velocidad

CREATE TABLE Totales_Accesos_por_velocidad (
    Año INT NOT NULL,
    Trimestre INT NOT NULL,
    Hasta_512_kbps INT NOT NULL,
    Entre_512_Kbps_y_1_Mbps INT NOT NULL,
    Entre_1_Mbps_y_6_Mbps INT NOT NULL,
    Entre_6_Mbps_y_10_Mbps INT NOT NULL,
    Entre_10_Mbps_y_20_Mbps INT NOT NULL,
    Entre_20_Mbps_y_30_Mbps INT NOT NULL,
    Mas_de_30_Mbps INT NOT NULL,
    OTROS INT NOT NULL,
    Total INT NOT NULL
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Totales Accesos por velocidad.csv'
INTO TABLE Totales_Accesos_por_velocidad
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- CREACION DE LA TABLA Accesos por velocidad

CREATE TABLE Accesos_por_velocidad (
    Año INT,
    Trimestre INT,
    Provincia VARCHAR(255),
    `HASTA 512 kbps` FLOAT,
    `+ 512 Kbps - 1 Mbps` FLOAT,
    `+ 1 Mbps - 6 Mbps` FLOAT,
    `+ 6 Mbps - 10 Mbps` FLOAT,
    `+ 10 Mbps - 20 Mbps` FLOAT,
    `+ 20 Mbps - 30 Mbps` FLOAT,
    `+ 30 Mbps` FLOAT,
    OTROS FLOAT,
    Total FLOAT
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Accesos por velocidad.csv'
INTO TABLE Accesos_por_velocidad
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- CREACION DE TABLAS Dial-BAf

CREATE TABLE Dial_BAf (
    Año INT,
    Trimestre INT,
    Provincia VARCHAR(255),
    `Banda ancha fija` INT,
    `Dial up` FLOAT,
    Total INT
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Dial-BAf.csv'
INTO TABLE Dial_BAf
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- CREACION DE TABLA Totales Dial-BAf

CREATE TABLE Totales_Dial_BAf (
    Año INT,
    Trimestre INT,
    `Banda ancha fija` INT,
    `Dial up` INT,
    Total INT,
    Periodo VARCHAR(255)
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Totales Dial-BAf.csv'
INTO TABLE Totales_Dial_BAf
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- CREACION DE TABLA Ingresos

CREATE TABLE Ingresos (
    Año INT,
    Trimestre INT,
    `Ingresos (miles de pesos)` FLOAT,
    Periodo VARCHAR(255)
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Ingresos.csv'
INTO TABLE Ingresos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- CARGAR TABLAS DE TELEFONIA MOVIL
-- TABLA INGRESOS MOVILES 

CREATE TABLE Ingresos_Moviles (
    Año INT,
    Trimestre INT,
    `Ingresos (miles de $)` INT,
    Periodo VARCHAR(255)
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TELEFONIA MOVIL/Ingresos.csv'
INTO TABLE Ingresos_Moviles
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- CREACION DE LA TABLA Penetracion_Moviles

CREATE TABLE Penetracion_Moviles (
    Año INT,
    Trimestre INT,
    `Accesos por cada 100 hab` FLOAT,
    Periodo VARCHAR(255)
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TELEFONIA MOVIL/Penetracion.csv'
INTO TABLE Penetracion_Moviles
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- CREACION TABLA Accesos_moviles

CREATE TABLE Accesos_Moviles (
    Año INT,
    Trimestre INT,
    `Total de accesos pospago` FLOAT,
    `Total de accesos prepago` FLOAT,
    `Total de accesos operativos` INT,
    Periodo VARCHAR(255)
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TELEFONIA MOVIL/Accesos.csv'
INTO TABLE Accesos_Moviles
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- CREACION DE TABLAS TELEFONIA FIJA
-- CREACION DE LA TABLA INGRESOS FIJA

CREATE TABLE Fija_ingresos (
    Año INT,
    Trimestre INT,
    `Ingresos (miles de $)` FLOAT
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TELEFONIA FIJA/Fija_Ingresos'
INTO TABLE Fija_ingresos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Fija_penetracion_prov

CREATE TABLE Fija_penetracion_prov (
    Año INT,
    Trimestre INT,
    Provincia VARCHAR(255),
    `Accesos telefonía fija por cada 100 hab` FLOAT,
    `Accesos telefonía fija por cada 100 hogares` FLOAT
);


LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TELEFONIA FIJA/Fija_penetracion_prov'
INTO TABLE Fija_penetracion_prov
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- CREACION DE TABLAS TV 
-- CREACION TABLA INGRESOS TV

CREATE TABLE Ingresos_TV (
    Año INT,
    Trimestre INT,
    `Ingresos TV por suscripción  (miles de $)` FLOAT,
    `Ingresos TV satelital (miles de $)` FLOAT
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TV/Ingresos_Tv.csv'
INTO TABLE Ingresos_TV
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- CREACION DE TABLA PENTRACION TOTALES TV

CREATE TABLE Penetracion_totales_TV (
    Año INT,
    Trimestre INT,
    `Accesos TV por suscripción por cada 100 hab` FLOAT,
    `Accesos TV satelital por cada 100 hab` FLOAT,
    `Accesos TV por suscripción por cada 100 hogares` FLOAT,
    `Accesos TV satelital por cada 100 hogares` FLOAT
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/TV/Penetraciones_Totales_Tv.csv'
INTO TABLE Penetracion_totales_TV
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- CREACION DE TABLA MAPA DE CONECTIVIDAD

CREATE TABLE Mapa_de_conectividad (
    Provincia VARCHAR(100),
    Partido VARCHAR(100),
    Localidad VARCHAR(100),
    Población INT,
    ADSL VARCHAR(10),
    Cablemodem VARCHAR(10),
    Dial_Up VARCHAR(10),
    Fibra_optica VARCHAR(10),
    Satelital VARCHAR(10),
    Wireless VARCHAR(10),
    Telefonia_Fija VARCHAR(10),
    _3G VARCHAR(10),
    _4G VARCHAR(10),
    Link FLOAT,
    Latitud FLOAT,
    Longitud FLOAT
);

LOAD DATA LOCAL INFILE '/Users/felipeamezquita/Library/Mobile Documents/com~apple~CloudDocs/Documents/HENRY/PROYECTO INDIVIDUAL/EJERCICIO 2/DATA/DATA PRINCIPAL/CSV/Mapa_Conectividad/Mapa_Conectividad.csv'
INTO TABLE Mapa_de_conectividad
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;