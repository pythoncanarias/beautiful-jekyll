---
layout: page
title: Crédito ECTS
subtitle: "Instrucciones para certificar el crédito ECTS"
---

En primer lugar debes haber firmado la hoja de asistencia **8 horas** durante el día del evento.

Si eso fue así, ya puedes pasar a entregar, al menos, **3 de los siguientes ejercicios** propuestos para cada una de las charlas.

## Taller de introducción a Python

Crear una función que dada una ruta de nuestro sistema, muestre el listado de todas las imágenes.

> Notas:
> 
> - Ver módulo `fnmatch`.
> - Ver módulo `os`.

[Enlace a la ponencia](/pyday/ponencias/python/)

## Taller de introducción a Django

**Los ejercicios aún no están disponibles**.

[Enlace a la ponencia](/pyday/ponencias/django/)

## Introducción a Jupyter Notebook

**Los ejercicios aún no están disponibles**.

[Enlace a la ponencia](/pyday/ponencias/jupyter/)

## Matemáticas y Python

**Los ejercicios aún no están disponibles**.

[Enlace a la ponencia](/pyday/ponencias/matematicas/)

## Micropython: El sílice y la serpiente

Usando *micros compatibles* (diapositiva 4 de la [presentación](https://www.slideshare.net/JoseLucasGrilloLoren/micropython-el-slice-y-la-serpiente)) que consigas ó [http://micropython.org/live/](http://micropython.org/live/):

Escribe un programa **original** que haga uso de al menos 3 de las siguientes características:

- Salida de mensajes por la terminal **+1**
- Uno o más dispositivos de slaida digital (u opcionalmente usando PWM) **+2**
- Al menos:
    + O bien, uno o varios dispositivos de *entrada* (digital o analógico) **+1**
    + O un periférico, por ejemplo usando I2C, SPI, 1-wire, etc. **+2**
- Al menos:
    + O bien, Timers **+1**
    + O, RTC u otras funciones de sleep **+3**
- Extras opcionales: funciones de red.

[Enlace a la ponencia](/pyday/ponencias/micropython/)

## Interfaces: kivy y Raspberry Pi

**Los ejercicios aún no están disponibles**.

[Enlace a la ponencia](/pyday/ponencias/interfaces/)

## Rendimiento y consumo energético

Utilizando el script de `perfcall`: [https://github.com/Anexo/perfcall](https://github.com/Anexo/perfcall)

> Ayuda para ejecutarlo:  
    `sudo ./perfcall.py -t 0 -c 1 -I 500 -e 1 -T 1 -a 'python fannkuch.py 11'`

1. Realizar una medición de un script hecho por ti o de uno de tu elección de:
    - [http://benchmarksgame.alioth.debian.org/](http://benchmarksgame.alioth.debian.org/)
2. Graficar el resultado con el script:
    - [https://github.com/Anexo/perfcsvplot](https://github.com/Anexo/perfcsvplot)

[Enlace a la ponencia](/pyday/ponencias/rendimiento_consumo_energetico/)

## Fabric: Tareas y despliegues

Hacer un script en Python. El script se debe conectar a un servidor remoto, y guardar el árbol de directorios y ficheros del home (`"~/"``) en un fichero. El script debe finalmente descargar este fichero a nuestro ordenador local.

> Pista:
> 
> Para el árbol de ficheros y directorios hay un comando de consola llamada "tree". Para que la salida del comando se guarde en un fichero determinado puedes poner `"tree > myfile.txt"`.

[Enlace a la ponencia](/pyday/ponencias/fabric/)

## IO Asíncrono con Python

El ejercicio consistirá en implementar un servidor de publish/subscribe (broker).

Para implementar el broker se ha de usar dos sockets que escuchen `asyncio.start_server()`
uno en `127.0.0.1` y puerto `8888` para los clientes que sean subscriptores
y otro en `127.0.0.1` y puerto `9999` para los clientes que sean publicadores.

El protocolo usado para transmitir los datos sera el siguiente.

1. Se asume que existen unos datos que se quieren enviar que son bytes.
2. Se calcula el tamaño en bytes de los datos.
3. Se envía un entero de 32 bits con el tamaño de los datos.
4. Se envían los datos.

El protocolo usado para recibir los datos sera el siguiente.

1. Se lee el entero de 4 bytes para saber el tamaño de los datos
2. Se leen los datos enviados usando el tamaño de los datos del paso anterior

Cuando un publicador envíe datos han de llegar a todos los subscriptores que estén conectados.

Para validar la implementación existen 5 test.

Para correr los test ejecutar en la raíz del proyecto
```
py.test
```

Se recomienda para el setup tener Python 3.5 o mayor y seguir estos pasos:

* Instalar virtualenv:
```
apt-get install python-virtualenv
```
 
* Crear el virtualenv estando dentro del directorio del proyecto
```
virtualenv -p $(which python3)
```

* Activamos el virtualenv
```
source ./virtualenv/bin/activate
```

* Instalamos las dependencias
```
pip install -r requirements.txt
```

* Lanzamos los test
```
py.test
```

[Enlace a la ponencia](/pyday/ponencias/asyncio/)

## Crear una API REST con Flask

El ejercicio para los créditos ECTS consiste en desarrollar una API REST con Flask y Flask-RESTful.
Hay libertad para escoger los modelos y la cantidad de las vistas. Los requisitos mínimos para el ejercicio son los siguientes:

- Utilizar mínimo dos modelos u objetos en Python (no es necesario usar una base de datos)
- Utilizar como mínimo una vista o [Resource](https://flask-restful.readthedocs.io/en/0.3.5/quickstart.html#resourceful-routing)
- Implementar dos métodos HTTP como mínimo en cada vista (GET, POST, PUT, PATCH, DELETE)
- Devolver los datos en JSON.

Pueden importar las dependencias para ejercicio a partir del **requirements.txt**

`pip install -r requirements.txt`

[Enlace a la ponencia](/pyday/ponencias/flask/)

## Visión artificial

Crear un script en Python para detectar los objetos en rojo los cuales deben aparecer solo en la imagen y descartar el resto. Puede hacerse a través de un fichero o usando una webcam

[Enlace a la ponencia](/pyday/ponencias/vision-artificial/)

## Programación de videojuegos con Godot Engine

**Los ejercicios aún no están disponibles**.

[Enlace a la ponencia](/pyday/ponencias/godot_engine/)

