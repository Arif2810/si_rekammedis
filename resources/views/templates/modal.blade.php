<script>
	$('#delete').on('show.bs.modal', function(event){

		var button = $(event.relatedTarget)

		var del_id = button.data('delid')
		var modal  = $(this)

		modal.find('.modal-body #del_id').val(del_id);
	})
</script>