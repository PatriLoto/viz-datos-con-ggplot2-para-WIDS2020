

Visualización de datos en R con ggplot2
================

### WIDS2020 - Córdoba

by Patricia A. Loto

-----

:spiral_calendar: Jueves 5 de marzo del 2020  
:alarm_clock:     15:30 - 18:30  
:hotel:           Universidad Tecnológica Nacional- Facultad Regional Córdoba- Maestro M. Lopez esq. Cruz Roja, Córdoba.
   
:earth_americas:  [Más información sobre WIDS2020](https://http://metcba.org/)  

## Descripción

## ¿Este curso es para mí?
1. Tienes conocimientos básicos del lenguaje R o Python y quieres aprender especificamente sobre visualización de datos.
2. Quieres conocer cúales son los componentes visuales de un gráfico.
3. Quieres entender los principios básicos de la Grámatica de gráficos en capas y cómo son implementadas en ggplot2.
4. Quieres conocer cuáles son los gráficos más comúnmente utilizados y cómo desarrollarlos con ggplot2.


## Antes del workshop

Gracias por inscribirte a este workshop, en el mismo trabajaremos con la versión más reciente de R y Rstudio, por lo que, para aprovecharlo deberás traer una pc portátil con lo siguiente instalado:

### Instalación de R and RStudio 

- Una versión reciente de **R (>=3.6.2)**, disponible de manera gratuita para su descarga en [CRAN](https://cran.r-project.org/). 

- Una versión reciente de **Rstudio Desktop (>=1.2.5033)**, disponible de manera gratuita para su descarga en [Rstudio](https://www.rstudio.com/download). 

En ambos casos, ten en cuenta cuál es el Sistema Operativo que utilizas y la versión del mismo (32 o 64 bits) para descargar la versión correcta tanto de R como de Rstudio.

- Los paquetes que utilizaremos pueden instalarse, abriendo Rstudio y ejecutando las siguientes sentencias:

``` R
mis_paquetes <- c("tidyverse", "gapminder","babynames","survey","socviz","here","cowplot", 
                 "patchwork", "ggrepel","ggridges","ggforce", "gridExtra","extrafont",
                 "scales","wesanderson","viridis", "viridisLite","prismatic","ggthemes",
                 "hrbrthemes","plotly","highcharter","GGally","sf","maps", "mapdata",
                 "mapproj","rnaturalearth","devtools", "easypackages")

install.packages(mis_paquetes, repos = "http://cran.rstudio.com")

```
Para poder instalar de manera exitosa los paquetes, es necesario que estés conectado a Internet.

### ¿Cómo verifico que los paquetes se instalaron correctamente?

Para verificar que las librerías se cargaron correctamente, por favor ejecuta las sentencias que están a continuación:

``` R
easypackages::libraries("tidyverse", "gapminder","babynames","survey","socviz","here","cowplot", 
                        "patchwork", "ggrepel","ggridges","ggforce", "gridExtra","extrafont",
                        "scales","wesanderson","viridis", "viridisLite","prismatic","ggthemes",
                        "hrbrthemes","plotly","highcharter","GGally","sf","maps", "mapdata",
                        "mapproj","rnaturalearth","devtools")

``` 

:writing_hand:  ## Slides y Código
Pronto se subirá todo el material a este repositorio.





#### Espero conocerte pronto,

**Patricia**

