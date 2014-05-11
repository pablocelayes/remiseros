remiseros
=========

Distintas ideas para la implementación de un sistema equitativo de rotación de guardias en una remisería.

Descripción del problema
=========

Hay que distribuir las guardias en la remiseria, éstas se hacen de a dos coches salvo los viernes y sábados que se hacen de a tres. 

Ademas hay que asignar 2 coches suplentes por noche para el caso en que con los dos o tres de guardia no alcance. 

Recuerden que el gremio remiseril es muy volátil y si un remisero se enoja entonces renuncia, así que las guardias sucesivas deberían de estar alejadas así como también la guardia debería estar lejos de la suplencia por si a alguien le toca hacer ambas en una semana, incluso respecto a esto pueden plantear un sistema en el que si alguien hace una suplencia entonces se reacomoden las guardias sin causar revuelo. 

Otra cosa a tener en cuenta es que tiene que ser adaptable a cambios en la cantidad de remiseros y al menos momentáneamente debería servir para el rango entre 15 y 25 autos, actualmente en la remisera hay 19.

Y por ultimo el sistema tiene que ser remisero-friendly osea tiene que pedir los autos y hacer las guardias automáticamente, estar atento a los cambios en el numero de autos y ser fácilmente demostrable que es un sistema justo para todos por que sino los remiseros se enojan y entonces...


Soluciones propuestas
========

- Gabriel propuso modelarlo como un problema de optimización entera, pueden encontrar un documento explicando su idea en /ideagabi

- Bruno y Ro propusieron distribuir la flota en pares y ternas, y buscar un método para irlas acomodando de forma que se cumplan las condiciones de *justicia* y *espaciado*.

- Pablo armó su variante de las ideas de Bruno y Ro, y resumió sus divagues en este iPython Notebook:

[url](http://nbviewer.ipython.org/github/pablocelayes/remiseros/blob/master/ideapablo/Remiseros.ipynb?create=1)

( el código fuente está en /ideapablo )
