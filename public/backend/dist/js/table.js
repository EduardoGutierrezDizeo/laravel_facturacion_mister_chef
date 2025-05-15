class CustomDataTable {
    constructor(id) {
        this.id = id;
        this.initializeDataTable();
    }

    initializeDataTable() {
        const table = $(this.id).DataTable({
            responsive: true,
            lengthChange: true,
            autoWidth: false,
            language: {
                sLengthMenu: "Mostrar _MENU_ entradas",
                sEmptyTable: "No hay datos disponibles en la tabla",
                sInfo: "Mostrando _START_ a _END_ de TOTAL entradas",
                sInfoEmpty: "Mostrando 0 a 0 de 0 entradas",
                sSearch: "Buscar:",
                sZeroRecords: "No se encontraron registros coincidentes en la tabla",
                sInfoFiltered: "(Filtrado de MAX entradas totales)",
                oPaginate: {
                    sFirst: "Primero",
                    sPrevious: "Anterior",
                    sNext: "Siguiente",
                    sLast: "Último"
                }
            }
        });

        // Esperar un momento para aplicar el estilo después de que se renderice
        setTimeout(() => {
            $(`${this.id}_length select`).css({
                'appearance': 'auto',
                '-webkit-appearance': 'auto',
                '-moz-appearance': 'auto',
                'padding-right': '20px',
                'background-position': 'right 0.5rem center',
                'background-repeat': 'no-repeat'
            });
        }, 100);
    }
}

// Uso de la clase CustomDataTable
$(document).ready(function() {
    const myDataTable = new CustomDataTable('#example1');
});
