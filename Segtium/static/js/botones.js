$(document).ready(function() {
    $('#example').DataTable( {
    	paging: false,
    	searching: false,
        dom: 'Bfrtip',
        buttons: [
            'excel', 'pdf','print'
        ]
    } );
} );