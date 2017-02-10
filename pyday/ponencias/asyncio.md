---
layout: ponencia
title: I/O asíncrono en Python
subtitle: "Código concurrente sin multithreads"
autor:
  nombre: Sergio Medina
  foto: /img/pyday/ponentes/smedina.jpg
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
