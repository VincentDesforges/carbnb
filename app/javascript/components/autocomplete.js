function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var carLocation = document.getElementById('car_location');

    if (carLocation) {
      var autocomplete = new google.maps.places.Autocomplete(carLocation, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(carLocation, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
