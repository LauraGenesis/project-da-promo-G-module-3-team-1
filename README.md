## Transformando el Talento: Análisis de Datos para Retener y Potenciar Empleados en ABC Corporation

Enolas's Data ha sido contratada por la empresa ABC Corporation con el propósito de disminuir la rotación de empleados, retener el talento y mejorar la satisfacción laboral a través de un proyecto integral de análisis de datos y experimentación A/B. 

La meta principal es identificar los factores determinantes que impactan en la satisfacción laboral y, en última instancia, en la retención del personal.

 En esta presentación, se expondrán los hallazgos del análisis exploratorio de datos, se diseñará un experimento A/B para poner a prueba hipótesis cruciales y se analizarán los resultados para proporcionar a ABC Corporation información estratégica valiosa que oriente sus decisiones futuras.

 ### Fases del Proyecto 

 Fase 1: Exploración y limpieza de datos

Fase 2: Transformación de los datos

Fase 3: Diseño e inserción de la base de datos

Fase 4: A/B Testing

Fase 5: Creación de una ETL (Extracción, Transformación y Carga)

### Importaciones Necesarias

import pandas as pd
import numpy as np
import random

# ------------------------------------------------------------------------
import scipy.stats as stats
from scipy.stats import shapiro
from scipy.stats import mannwhitneyu
import re

# -----------------------------------------------------------------------
pd.set_option('display.max_columns', None) 
import warnings
warnings.filterwarnings("ignore")

