<?php include 'header.php'?>

<h1>Edit Evenement</h1>
<div class="container">
	<form action="<?php echo site_url('CrudController/update_evenement') ?>/<?php echo $row->eve_id; ?>" method="POST">
		<div class="form-group">
			<label for="Titre">Titre</label>
			<input type="text" class="form-control" id="titre" name="titre" placeholder="Titre"
				value="<?php echo $row->eve_titre; ?>">
		</div>
		<div class="form-group">
			<label for="Description_courte">Description courte</label>
			<input type="text" class="form-control" id="description_courte" name="description_courte" placeholder="Description courte"
                value="<?php echo $row->eve_description_courte; ?>">
		</div>
		<div class="form-group">
			<label for="description_longue">Description_longue</label>
			<input type="text" class="form-control" id="description_longue" name="description_longue"
				placeholder="description_longue" value="<?php echo $row->eve_description_longue; ?>">
		</div>
		<div class="form-group">
			<label for="Cheffe_id">Cheffe_id</label>
			<input type="text" class="form-control" id="eve_che_id" name="eve_che_id" placeholder="che_id"
            value="<?php echo $row->eve_che_id; ?>">
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
			<button type="submit" class="btn btn-primary">Ajouter</button>
		</div>
	</form>
</div>
<?php include 'footer.php'?>
