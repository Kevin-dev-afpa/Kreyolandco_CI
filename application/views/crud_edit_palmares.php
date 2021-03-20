<?php include 'header.php'?>

<h1>Edit Palmares</h1>
<div class="container">
	<form action="<?php echo site_url('CrudController/update_palmares') ?>/<?php echo $row->pal_id; ?>" method="POST">
		<div class="form-group">
			<label for="description">description</label>
			<input type="text" class="form-control" id="intitule" name="intitule" placeholder="intitule"
				value="<?php echo $row->pal_intitule; ?>">
		</div>
		<div class="form-group">
			<label for="exp_id">Description courte</label>
			<input type="date" class="form-control" id="date_obtention" name="date_obtention" placeholder="Date"
				value="<?php echo $row->pal_date_obtention; ?>">
		</div>
		<div class="form-group">
			<label for="Description">Description</label>
			<input type="text" class="form-control" id="description" name="description" placeholder="description"
				value="<?php echo $row->pal_description; ?>">
		</div>
		<div class="form-group">
			<label for="che_id">che_id</label>
			<input type="text" class="form-control" id="che_id" name="che_id" placeholder="che_id"
				value="<?php echo $row->pal_che_id; ?>">
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
			<button type="submit" class="btn btn-primary">Ajouter</button>
		</div>
	</form>
</div>
<?php include 'footer.php'?>
