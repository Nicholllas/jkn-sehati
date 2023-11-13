//tile Layer
let latLng = [-8.67913, 115.255997];
var map = L.map('map').setView(latLng, 14);
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 16,
    attribution:
        '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

//async
async function titikk() {
    var data = await fetch('http://jkn-sehati.test/titik');
    return data.json();
}

console.log(titikk());
//cari lokasi
var markersLayer = new L.LayerGroup();
map.addLayer(markersLayer);
var controlSearch = new L.Control.Search({
    position: 'topright',
    layer: markersLayer,
    initial: false,
    zoom: 18,
    marker: false
});
map.addControl(controlSearch);

function createLabelIcon(labelText) {
    return L.divIcon({
        className: 'custom-label-icon',
        html: `<div>${labelText}</div>`
    });
}

// Fetch data from the API endpoint
fetch('http://jkn-sehati.test/titik')
    .then((response) => response.json())
    .then((apiData) => {
        // Populate map with markers from fetched data
        apiData.forEach((item) => {
            var title = item.title, // Value searched
                loc = [item.latitude, item.longitude], // Position found
                labelText = item.title; // Use the title as the label text
            var customIcon = createLabelIcon(labelText);
            marker = new L.Marker(new L.latLng(loc), {
                icon: customIcon,
                title: title
            }); // Create marker
            marker.bindPopup(`
            <table>
            <tr>
            <td>Nama FKTP</td>
            <td>:</td>
            <td>${item.title}</td>
            </tr>
            <tr>
            <td>Kota/Kab</td>
            <td>:</td>
            <td>${item.city}</td>
            </tr>
            <tr>
            <td>Kecamatan</td>
            <td>:</td>
            <td>${item.kecamatan}</td>
            </tr>
            <tr>
            <td>Desa</td>
            <td>:</td>
            <td>${item.desa}</td>
            </tr>
            <br>
            <tr>
            <td><button class='btn btn-info' onclick="keSini(${parseFloat(
                item.latitude
            )}, ${parseFloat(item.longitude)})">Ke Sini</button></td>
              </tr>
              </table>
              `);
            markersLayer.addLayer(marker);
        });

        // Set center from the first location in the fetched data
        if (apiData.length > 0) {
            var firstLoc = [apiData[0].latitude, apiData[0].longitude];
            map.panTo(new L.LatLng(firstLoc[0], firstLoc[1]));
        }
    })
    .catch((error) => {
        console.error('Error fetching data:', error);
    });

//ambiltitik
getLocation();
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        x.innerHTML = 'Geolocation is not supported by this browser.';
    }
}

function showPosition(position) {
    var input = document.getElementById('latitude');
    input.value = position.coords.latitude;

    var input = document.getElementById('longitude');
    input.value = position.coords.longitude;
}

//routingmachine
var control = L.Routing.control({
    waypoints: [latLng],
    geocoder: L.Control.Geocoder.nominatim(),
    reverseWaypoints: true,
    routeWhileDragging: true,
    routeDragTimeout: 250,
    showAlternatives: true
});
control.addTo(map);

function keSini(longitude, langitude) {
    var latLng = L.latLng(longitude, langitude);
    control.spliceWaypoints(control.getWaypoints().length - 1, 1, latLng);
}

$(document).on('click', '.dariSini', function () {
    let latLng = [$('[name=latitude]').val(), $('[name=longitude]').val()];
    control.spliceWaypoints(0, 1, latLng);
    map.panTo(latLng);
});

// Custom Icon
var fktpIcon = L.icon({
    iconUrl: 'frontend/images/icon/hospital-building.png',
    iconSize: [24, 30], // size of the icon
    iconAnchor: [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62], // the same for the shadow
    popupAnchor: [-3, -76] // point from which the popup should open relative to the iconAnchor
});
// End of Custom icons

//Perulangan Marker
