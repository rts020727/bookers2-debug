window.triggerMap = ->

  # --- show --- #
  mapCanvas = $('.map-show-canvas')
  if mapCanvas.length && mapCanvas.attr('data-latitude')

    MapHelper.showMap(mapCanvas.get(0),
      {
        mapHeight:      300,
        mapLat:         mapCanvas.attr('data-latitude'),
        mapLng:         mapCanvas.attr('data-longitude'),
        zoom:           10
        #scaleControl: ,
        #scrollwheel: ,
        #showMarker: ,
        #draggable: ,
      }
    )
