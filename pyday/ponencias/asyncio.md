---
permalink: "/pyday/ponencias/asyncio/"
layout: ponencia
title: I/O asíncrono en Python
subtitle: "Código concurrente sin multithreads"
autor:
  nombre: Sergio Medina
  foto: /img/pyday/ponentes/smedina.jpg
  bio:
    Senior Developer en System73, amante de Python, devops, amateur de la seguridad informática y curioso por naturaleza. Me considero a mi mismo aprendiz de todo, maestro de nada. Así mismo soy un gran amante del software libre y de sus respectivas comunidades. Generalmente me opongo a trabajar con herramientas de software propietario excepto por el PyCharm, el cual es el que programa por mi.  
    En mi día a día me dedico a programar microservicios en Python, así como diseñar infraestructuras distribuidas. Esto cambia al llegar a casa, donde le suelo dar a todo tipo de tecnologías, desde embebidos y lenguajes compilados, pasando por sistemas de alto rendimento o altamente paralelos, hasta seguridad ofensiva, networking y protocolos. Últimamente centro mi interés por Rust, e incluso algunas veces me convierto en pecador y le doy al js.
  linkedin: sergiomed
  github: lumasepa

---

Empezaremos con una introducción diferenciando concurrencia de paralelismo,
algo básico para entender el paradigma. También veremos las diferencias entre
I/O bloqueante e I/O no bloqueante. Despues pasaremos a la historia del I/O
asíncrono en Python y como ha evolucionado en el tiempo.

A continuación nos centraremos en
[`asyncio`](https://docs.python.org/3/library/asyncio.html#module-asyncio) como
librería estándar de I/O asíncrono, disponible a partir de la versión 3.4. La
nueva sintaxis `async/await` y el API de Streams de `asyncio`. Para ello
usaremos un ejemplo de un servidor y clientes de *chat* simple. Por último
veremos en que tipo de problemas encaja el modelo de I/O asíncrono.
