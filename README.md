
# WIDS2020 - Córdoba
-----
## Workshop



![presentacion](https://raw.githubusercontent.com/PatriLoto/viz-datos-con-ggplot2-para-WIDS2020/master/presentacion_curso.png)



### **by Patricia A. Loto**



-----
## Fecha y Lugar
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

- Una versión reciente de **R (>=3.6.2)** disponible de manera gratuita para su descarga en [CRAN](https://cran.r-project.org/). 

- Una versión reciente de **Rstudio Desktop (>=1.2.5033)** disponible de manera gratuita para su descarga en [Rstudio](https://www.rstudio.com/download). 

En ambos casos, ten en cuenta cuál es el Sistema Operativo que utilizas y la versión del mismo (32 o 64 bits) para descargar la versión correcta tanto de R como de Rstudio.

- Los paquetes que utilizaremos pueden instalarse, abriendo Rstudio y ejecutando las siguientes sentencias:

``` R
mis_paquetes <- c("tidyverse", "gapminder","babynames","survey","socviz","here","cowplot", 
                  "patchwork", "ggrepel","ggridges","ggforce", "gridExtra","extrafont",
                  "scales","wesanderson","viridis", "viridisLite","prismatic","fishualize",
                  "RColorBrewer","ggthemes","hrbrthemes","plotly","highcharter","GGally","sf",
                  "maps", "mapdata","mapproj","rnaturalearth","devtools")

install.packages(mis_paquetes, repos = "http://cran.rstudio.com")
remotes::install_github("clauswilke/ggtext")

```
Para poder instalar de manera exitosa los paquetes, es necesario que estés conectado a Internet.

### ¿Cómo verifico que los paquetes se instalaron correctamente?

Para verificar que los paquetes se cargaron correctamente, por favor ejecutá las sentencias que están a continuación:

``` R
easypackages::libraries("tidyverse", "gapminder","babynames","survey","socviz","here","cowplot", 
                        "patchwork", "ggrepel","ggridges","ggforce", "gridExtra","extrafont",
                        "scales","wesanderson","viridis", "viridisLite","prismatic","fishualize",
                        "RColorBrewer", "ggtext","ggthemes","hrbrthemes","plotly","highcharter","GGally",
                        "sf","maps", "mapdata","mapproj","rnaturalearth","devtools")

``` 

## Paquetes

En el presente curso trabajaremos con el paquete ggplot2, pero existen otros paquetes que puedes explorar:

* [patchwork](https://github.com/thomasp85/patchwork)/[cowplot](https://cran.r-project.org/web/packages/cowplot/vignettes/introduction.html): tienen la misma finalidad, permiten combinar dos o más gráficos.

* [paletteer](https://github.com/EmilHvitfeldt/paletteer): agrupa una gran colección de paletas de colores.

* [plotly](https://plot.ly/r/)/[highcharter](http://jkunst.com/highcharter/index.html): ambos permiten realizar gráficos interactivos.

* [gganimate](https://github.com/thomasp85/gganimate): permite agregarle animación a los gráficos hechos con ggplot2.

* [esquisse](https://github.com/dreamRs/esquisse): facilita la exploración y visualización de datos.

* [ggtext](https://github.com/wilkelab/ggtext): permite extender las funcionalidades de ggplot2, mediante la customización de títulos, subtítulos, anotaciones, etc.

Espero te sean de utilidad.

## Slides y Código  
:writing_hand: Pronto se subirá todo el material a este repositorio.

## **Referencias** 

Para la elaboración tanto del material teórico como de los ejercicios prácticos se utilizaron como referencia, los libros descriptos a continuación:

* [R Graphics Cookbook: Practical Recipes for Visualizing Data](http://www.cookbook-r.com/Graphs/) de Winston Chang  - Capítulo: [Bar graphs](http://www.cookbook-r.com/Graphs/Bar_and_line_graphs_(ggplot2)/)

* [R para Ciencia de Datos](https://es.r4ds.hadley.nz/) de Hadley Wickham.

* [A Data Visualization: a practical introduction](http://socviz.co/) de Kieran Healy.  

* [Fundamentals of Data Visualization](https://serialmentor.com/dataviz/) de Claus Wilke.




**Patricia**

