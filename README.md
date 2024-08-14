![IMAGEN PORTADA](https://github.com/psm545/Analisis-de-Comunicaciones-Enacom-Argentina-Henry-PI-/blob/main/IMG/Designer-18.jpeg)


# Análisis del Sector de Telecomunicaciones en Argentina


### Ver presentacion Power BI

[Dashboard de Power BI](https://app.powerbi.com/view?r=eyJrIjoiYTE0YTk3NjItMjJmMC00ZGM1LTlmMmYtYzgzMmYyMWFmZTVjIiwidCI6Ijc5ODcxZWIxLTYwOTYtNDJiZi05OGVmLWI0ZjNlNGVmODMxOCIsImMiOjR9)


## Introducción

En la era moderna, las telecomunicaciones han transformado la manera en que las personas, organizaciones y dispositivos se conectan, facilitando la transmisión de información a través de medios electrónicos como la telefonía, televisión, radio e internet. En Argentina, este sector ha experimentado un crecimiento notable, con 62.12 millones de conexiones registradas en 2020, posicionando al país a la vanguardia en el desarrollo de las telecomunicaciones.

Este proyecto tiene como objetivo principal analizar el comportamiento del sector de telecomunicaciones a nivel nacional, con un enfoque particular en los servicios de internet, para identificar oportunidades de crecimiento y proponer soluciones que mejoren la calidad de los servicios ofrecidos.

## Metodología

Para llevar a cabo este análisis, se siguió una metodología estructurada en tres fases principales:

1. **Análisis Exploratorio de Datos (EDA):** Se realizó un análisis exhaustivo de los datos utilizando Python y sus bibliotecas especializadas como Pandas, Matplotlib, Seaborn y NumPy. Este proceso incluyó la identificación y manejo de valores faltantes, outliers y registros duplicados, así como la visualización de las principales tendencias y patrones del sector.

2. **Transformación y Extracción de Datos (ETL):** La base de datos se construyó utilizando SQL y se subió a Google Cloud para facilitar su acceso y manipulación. Power Query se utilizó para la limpieza y transformación de los datos antes de su análisis detallado.

3. **Desarrollo del Dashboard en Power BI:** Se creó un dashboard interactivo en Power BI, que permite explorar detalladamente los datos mediante filtros y visualizaciones coherentes con el storytelling. El dashboard se conectó a la base de datos en Google Cloud para garantizar la actualización en tiempo real.

## Objetivos

- Analizar el comportamiento del sector de telecomunicaciones en Argentina, con un enfoque en los servicios de internet.
- Identificar oportunidades de mejora en la calidad de los servicios ofrecidos.
- Proponer KPIs y realizar un seguimiento de los mismos para medir el crecimiento y la eficiencia de los servicios.
- Desarrollar un dashboard interactivo que permita a la empresa visualizar y explorar los datos de manera eficiente.

## Desarrollo del Proyecto

### 1. Análisis Exploratorio de Datos (EDA)

[Analisis EDA Jupiter Notebook](https://github.com/psm545/Analisis-de-Comunicaciones-Enacom-Argentina-Henry-PI-/blob/main/Analisis%20Exploratorio%20de%20Datos%20EDA.ipynb)

- **Herramientas Utilizadas:** Python (Pandas, Matplotlib, Seaborn, NumPy)
- **Descripción:** Se analizaron y visualizaron los datos para identificar tendencias, patrones y posibles problemas como valores faltantes, outliers y duplicados. Este análisis fue clave para preparar los datos para el siguiente paso.

**Adelanto del EDA**


![IMAGEN EDA](https://github.com/psm545/Analisis-de-Comunicaciones-Enacom-Argentina-Henry-PI-/blob/main/IMG/44.png)



1. **Evolución Anual y Trimestral de Accesos a Internet por Tecnología:**
    Fibra óptica: muestra un crecimiento constante y significativo tanto en el análisis anual como trimestral, lo que indica una creciente preferencia por esta tecnología debido a su mayor velocidad y fiabilidad.
    Cablemodem: también ha visto un aumento, pero no tan pronunciado como la fibra óptica, lo que podría reflejar una transición gradual de los consumidores hacia opciones de mayor velocidad.
    ADSL: ha disminuido consistentemente a lo largo de los años, reflejando probablemente la obsolescencia de la tecnología frente a alternativas más rápidas.
    Wireless y Otros: aunque menos significativas que la fibra óptica y el cablemodem, estas tecnologías mantienen una presencia estable en el mercado.

2. **Correlación entre Tecnologías:**
    Las tecnologías más modernas (Fibra óptica y Cablemodem) muestran una correlación negativa con tecnologías más antiguas como el ADSL, lo que sugiere que el crecimiento de las nuevas tecnologías está reemplazando a las antiguas en lugar de coexistir con ellas.

3. **Composición del Mercado de Accesos a Internet por Tecnología:**
    La gráfica de áreas apiladas demuestra cómo la composición del mercado ha cambiado dramáticamente en favor de la fibra óptica en los últimos años, mientras que la participación de tecnologías como ADSL ha disminuido proporcionalmente.

4. **Crecimiento Total por Tecnología:**
    Este gráfico refleja claramente los "ganadores" y "perdedores" en términos de crecimiento de accesos totales, con la fibra óptica y cablemodem experimentando un aumento neto significativo, mientras que ADSL muestra una disminución neta.

5. **Implicaciones Estratégicas:**
    Estas tendencias destacan la importancia de invertir en tecnologías de acceso a internet de alta velocidad como la fibra óptica para satisfacer la demanda creciente de los consumidores. También subrayan la necesidad de considerar el retiro gradual de tecnologías más antiguas como el ADSL, que están perdiendo rápidamente su relevancia en el mercado.
   
### 2. Transformación y Extracción de Datos (ETL)

[Creacion Base de Datos SQL](https://github.com/psm545/Analisis-de-Comunicaciones-Enacom-Argentina-Henry-PI-/blob/main/Creacion%20Base%20de%20Datos%20Enacom%20Comunicaciones.sql)

- **Herramientas Utilizadas:** SQL, Google Cloud, Power Query
- **Descripción:** Los datos se limpiaron, transformaron y almacenaron en una base de datos en Google Cloud, accesible desde Power BI. Este paso aseguró que los datos estuvieran en un formato óptimo para el análisis y visualización.

### 3. Desarrollo del Dashboard en Power BI
[Dashboard de Power BI](https://app.powerbi.com/view?r=eyJrIjoiYTE0YTk3NjItMjJmMC00ZGM1LTlmMmYtYzgzMmYyMWFmZTVjIiwidCI6Ijc5ODcxZWIxLTYwOTYtNDJiZi05OGVmLWI0ZjNlNGVmODMxOCIsImMiOjR9)

- **Herramientas Utilizadas:** Power BI
- **Descripción:** Se creó un dashboard interactivo y funcional que permite a los usuarios explorar los datos con facilidad. Se incluyeron filtros, gráficos y visualizaciones que facilitan la interpretación de la información y el análisis de los KPIs propuestos.

## Tecnologías Utilizadas

![SQL](https://img.shields.io/badge/SQL-00758F?style=for-the-badge&logo=sql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=power-bi&logoColor=black)
![Power Query](https://img.shields.io/badge/Power_Query-3178C6?style=for-the-badge&logo=power-query&logoColor=white)
![Google Cloud](https://img.shields.io/badge/Google_Cloud-4285F4?style=for-the-badge&logo=google-cloud&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual_Studio_Code-007ACC?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-013243?style=for-the-badge&logo=matplotlib&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Seaborn](https://img.shields.io/badge/Seaborn-3776AB?style=for-the-badge&logo=seaborn&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)

## Repositorio de GitHub

Este repositorio contiene los archivos y recursos utilizados en el desarrollo del proyecto, incluyendo:

- **EDA:** Notebook con el análisis exploratorio de datos.
- **ETL:** Scripts SQL y documentos de la transformación de datos.
- **Dashboard:** Archivo de Power BI y conexiones a Google Cloud.
- **KPIs:** Análisis y seguimiento de KPIs en el dashboard.

## Conclusiones

Este proyecto proporciona una visión integral del sector de telecomunicaciones en Argentina, destacando las oportunidades de mejora y crecimiento en los servicios de internet. A través de un análisis exhaustivo y la creación de un dashboard interactivo, se lograron identificar las áreas clave para la toma de decisiones estratégicas en la empresa prestadora de servicios.

