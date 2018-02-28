import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);

  // // Add marker options
  // const image = 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';

  // markers.forEach(function(marker) {
  //   map.addMarker({
  //     icon: image,
  //     position: marker
  //   }
  //   );
  // });
  // // add marker option end

  map.addMarkers(markers); // default marker

  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }

  const styles = [
    {
      "stylers": [
        {
          "hue": "#dd0d0d"
        }
      ]
    },
    {
      "featureType": "road",
      "elementType": "labels",
      "stylers": [
        {
          "visibility": "off"
        }
      ]
    },
    {
        "featureType": "road",
        "elementType": "geometry",
        "stylers": [
          {
            "lightness": 100
          },
          {
            "visibility": "simplified"
          }
        ]
    }
  ];

  map.addStyle({
    styles: styles,
    mapTypeId: 'map_style'
  });
  map.setStyle('map_style');
}



autocomplete();

