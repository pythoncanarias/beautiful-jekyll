### Web [pythoncanarias.es](http://www.pythoncanarias.es/) en marcha gracias a..

- [Beautiful Jekyll](https://github.com/daattali/beautiful-jekyll) is a ready-to-use template to help you create an awesome website quickly.
- [Jekyll](http://jekyllrb.com/) Transform your plain text into static websites and blogs.
- [Github Pages](https://pages.github.com/) Websites for you and your projects.

### Instalación en local

Esta plantilla necesita jekyll v3. Si tu distro tiene la v3, entonces instalalo:

```
apt-get install jekyll
jekyll
```

Si tiene la v2, entonces el camino es diferente:

```
apt-get install bundler`
bundle install
bundle exec jekyll
```

Para ejecutar un servidor web para servir la página y poderla ver, ejecuta el comando correspondiente, y visualiza [http://localhost:4000/](http://localhost:4000/)

- `jekyll serve -w`
- `bundle exec jekyll serve -w`

### Recomendaciones de uso

- Los cambios del git se reflejan instantáneamente en [http://www.pythoncanarias.es/](http://www.pythoncanarias.es/).
- Para las charlas es necesario poner los metadatos+texto en `pyday-2017/ponencias/` (hay un ejemplo), y las fotos de los ponentes en `img/pyday-2017/ponentes/`. Si no tienen foto, se puede poner la foto del ninja. El indice que esta en `pyday-2017/programa.md` hay que actualizarlo manualmente.
- Los posts del blog poner los markdown en `_posts` y las imagenes en `img/posts/`, con el mismo nombre ambos ficheros variando la extension.
