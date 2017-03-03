---
layout: page
title: Guia del asistente
subtitle: "¿Qué tengo que hacer si soy asistente?"
---

<h2>¿Hay ordenadores o tengo que llevar mi portatil?</h2>

<p>Para los <strong>talleres</strong>, las sala de informática dispone de 58 ordenadores y huecos libres. Por tanto, no es estrictamente necesario que traigas tu portatil, pero puedes.</p>
<p>Para las <strong>charlas</strong>, el aula de estudio no tiene ordenadores, por tanto, si quieres complementar lo que va diciendo el ponente, <strong>deberías traer tu portatil</strong>.</p>

<h2>¿Dónde almorzar por la zona?</h2>

<p>Por la zona hay varios bares y restaurantes a menos de 500m.</p>
<ul>
<li>Bar Restaurante El Cortijo (~15 plazas) <a href="geo:28.48201,-16.32672?z=19">geo:28.48201,-16.32672?z=19</a></li>
<li>Comercial Los Corrales (~8 plazas) <a href="geo:28.48151,-16.32139?z=19">geo:28.48151,-16.32139?z=19</a></li>
<li>Bar X (~40 plazas) <a href="geo:28.48345,-16.32430?z=19">geo:28.48345,-16.32430?z=19</a></li>
<li>Rincon de Make ¿? () <a href="geo:28.48615,-16.32481?z=19">geo:28.48615,-16.32481?z=19</a></li>
<li>Bar Sinfreno (~40 plazas) <a href="geo:28.48653,-16.32275?z=19">geo:28.48653,-16.32275?z=19</a></li>
</ul>

<div class="container-fluid" id="mapdiv" style="height: 300px"></div>

<script src="//www.openlayers.org/api/OpenLayers.js"></script>
<script>
    map = new OpenLayers.Map("mapdiv");
    map.addLayer(new OpenLayers.Layer.OSM());
    
    epsg4326 =  new OpenLayers.Projection("EPSG:4326"); //WGS 1984 projection
    projectTo = map.getProjectionObject(); //The map projection (Spherical Mercator)
   
    var lonLat = new OpenLayers.LonLat(-16.32263, 28.48306).transform(epsg4326, projectTo);
    var zoom=15;
    map.setCenter (lonLat, zoom);

    var vectorLayer = new OpenLayers.Layer.Vector("Overlay");

    // Define markers as "features" of the vector layer:
    var feature = new OpenLayers.Feature.Vector(
            new OpenLayers.Geometry.Point(-16.32672, 28.48201).transform(epsg4326, projectTo),
            {description:'Bar Restaurante El Cortijo'} ,
            {externalGraphic: '/img/marker.png', graphicHeight: 25, graphicWidth: 21, graphicXOffset:-12, graphicYOffset:-25  }
        );    
    vectorLayer.addFeatures(feature);

    var feature = new OpenLayers.Feature.Vector(
            new OpenLayers.Geometry.Point(-16.32139, 28.48151).transform(epsg4326, projectTo),
            {description:'Comercial Los Corrales'} ,
            {externalGraphic: '/img/marker.png', graphicHeight: 25, graphicWidth: 21, graphicXOffset:-12, graphicYOffset:-25  }
        );    
    vectorLayer.addFeatures(feature);

    var feature = new OpenLayers.Feature.Vector(
            new OpenLayers.Geometry.Point(-16.32275, 28.48653).transform(epsg4326, projectTo),
            {description:'Bar Sinfreno'} ,
            {externalGraphic: '/img/marker.png', graphicHeight: 25, graphicWidth: 21, graphicXOffset:-12, graphicYOffset:-25  }
        );    
    vectorLayer.addFeatures(feature);

    var feature = new OpenLayers.Feature.Vector(
            new OpenLayers.Geometry.Point(-16.32481, 28.48615).transform(epsg4326, projectTo),
            {description:'Rincon de Make ¿?'} ,
            {externalGraphic: '/img/marker.png', graphicHeight: 25, graphicWidth: 21, graphicXOffset:-12, graphicYOffset:-25  }
        );    
    vectorLayer.addFeatures(feature);

    var feature = new OpenLayers.Feature.Vector(
            new OpenLayers.Geometry.Point(-16.32430, 28.48345).transform(epsg4326, projectTo),
            {description:'Bar X'} ,
            {externalGraphic: '/img/marker.png', graphicHeight: 25, graphicWidth: 21, graphicXOffset:-12, graphicYOffset:-25  }
        );    
    vectorLayer.addFeatures(feature);

    var feature = new OpenLayers.Feature.Vector(
            new OpenLayers.Geometry.Point(-16.32263, 28.48106).transform(epsg4326, projectTo),
            {description:'Edificio de Servicios al Alumnado de Anchieta'} ,
            {externalGraphic: '/img/marker-python.png', graphicHeight: 25, graphicWidth: 25, graphicXOffset:-12, graphicYOffset:-12  }
        );    
    vectorLayer.addFeatures(feature);

    

    map.addLayer(vectorLayer);
 
    
    //Add a selector control to the vectorLayer with popup functions
    var controls = {
      selector: new OpenLayers.Control.SelectFeature(vectorLayer, { onSelect: createPopup, onUnselect: destroyPopup })
    };

    function createPopup(feature) {
      feature.popup = new OpenLayers.Popup.FramedCloud("pop",
          feature.geometry.getBounds().getCenterLonLat(),
          null,
          '<div class="markerContent">'+feature.attributes.description+'</div>',
          null,
          true,
          function() { controls['selector'].unselectAll(); }
      );
      //feature.popup.closeOnMove = true;
      map.addPopup(feature.popup);
    }

    function destroyPopup(feature) {
      feature.popup.destroy();
      feature.popup = null;
    }
    
    map.addControl(controls['selector']);
    controls['selector'].activate();
      
</script>
