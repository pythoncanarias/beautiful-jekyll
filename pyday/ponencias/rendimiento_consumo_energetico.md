---
layout: ponencia
permalink: "/pyday/ponencias/rendimiento_consumo_energetico/"

title: Rendimiento y consumo energético con Python
autor:
  nombre: Tomás López-Fragoso Rumeu
  foto: /img/pyday/ponentes/tomaslopezfragosorumeu.png
  bio:
    Mi nombre es Tomás López-Fragoso Rumeu y soy Ingeniero en Electrónica por la Universidad de la Laguna. Actualmente soy "Studio Manager" y desarrollador "Full Stack" en BoomBox, una empresa americana cuya actividad es la producción y traducción de software y videojuegos.
    Mi actividad profesional comenzó diseñando circuitos electrónicos para una empresa de motos eléctricas. Más tarde fundé un estudio de diseño web y aplicaciones móviles, compaginándolo con mi trabajo en la ULL, tanto en el SAII como más tarde en exclusiva para el Vicerrectorado de Posgrado. Finalmente me uní al equipo de BoomBox, para comenzar como Full Stack Developer y en la actualidad ser también el director del estudio. 
    Durante esta última etapa es donde comencé mi doctorado en el programa de Ingeniería Industrial, Informática y Medioambiental, con la tesis titulada "Monitorización de rendimiento y consumo energético a nivel de proceso en arquitecturas multinúcleo".
  linkedin: tomaslopezfragosorumeu
---

¿Les preocupa a ustedes el medioambiente? ¿Creen que 
como programadores de Python una línea de código 
mal puesta no afecta al gasto energético de tu servidor, 
mientras tú código funcione? ¡Comprobémoslo!

### Presentación

Puedes consultar la presentación en [este enlace de Slideshare](http://www.slideshare.net/pythoncanarias/rendimiento-y-consumo-energetico-con-python).

### Ejercicios para crédito ECTS

Utilizando el script de `perfcall`: [https://github.com/Anexo/perfcall](https://github.com/Anexo/perfcall)

> Ayuda para ejecutarlo:  
    `sudo ./perfcall.py -t 0 -c 1 -I 500 -e 1 -T 1 -a 'python fannkuch.py 11'`

1. Realizar una medición de un script hecho por ti o de uno de tu elección de:
    - [http://benchmarksgame.alioth.debian.org/](http://benchmarksgame.alioth.debian.org/)
2. Graficar el resultado con el script:
    - [https://github.com/Anexo/perfcsvplot](https://github.com/Anexo/perfcsvplot)

Pueden enviar los resultados a: `tlopezfr@ull.edu.es`
