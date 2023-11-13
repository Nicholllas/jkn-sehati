$(document).ready(function () {
    $('select').selectize({
        sortField: 'text'
    });
});

$(document).ready(function () {
    $('#daftarfaskesTable').DataTable({
        stateSave:true
    });
});

$(document).ready(function () {
    $('#daftarfotofaskesTable').DataTable({
        stateSave:true
    });
});

$(document).ready(function () {
    $('#daftarkoordinatfaskesTable').DataTable({
        stateSave:true
    });
});
