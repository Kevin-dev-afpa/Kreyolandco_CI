<?php include 'header.php'?>

<h1>Edit Service</h1>
<div class="container">
	<form action="<?php echo site_url('CrudController/update_service') ?>/<?php echo $row->ser_id; ?>" method="POST">
		<div class="form-group">
			<label for="Date">Date</label>
			<input type="date" class="form-control" id="date" name="date" placeholder="date"
				value="<?php echo $row->ser_date; ?>">
		</div>
		<div class="form-group">
			<label for="Code postal">Code postal</label>
			<input type="text" class="form-control" id="cp" name="cp" placeholder="cp"
				value="<?php echo $row->ser_cp; ?>">
		</div>
		<div class="form-group">
			<label for="Lieu">Lieu</label>
			<input type="text" class="form-control" id="lieu" name="lieu" placeholder="lieu"
				value="<?php echo $row->ser_lieu; ?>">
		</div>
        <div class="form-group">
			<label for="Capacite">Capacite</label>
			<input type="text" class="form-control" id="capacite" name="capacite" placeholder="capacite"
				value="<?php echo $row->ser_capacite; ?>">
		</div>
        <div class="form-group">
			<label for="Description courte">Description courte</label>
			<input type="text" class="form-control" id="description_courte" name="description_courte" placeholder="description_courte"
				value="<?php echo $row->ser_description_courte; ?>">
		</div>
        <div class="form-group">
			<label for="Description longue">Description longue</label>
			<input type="text" class="form-control" id="description_longue" name="description_longue" placeholder="description_longue"
				value="<?php echo $row->ser_description_longue; ?>">
		</div>
        <div class="form-group">
			<label for="Type">Type</label>
			<input type="text" class="form-control" id="type" name="type" placeholder="type"
				value="<?php echo $row->ser_type; ?>">
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
			<button type="submit" class="btn btn-primary">Modifier</button>
		</div>
	</form>
</div>
<?php include 'footer.php'?>
