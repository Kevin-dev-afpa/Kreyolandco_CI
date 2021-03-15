<?php include 'header.php'?>

<h1>Edit Cheffe</h1>
<div class="container">
	<form action="<?php echo site_url('CrudController/update_cheffe') ?>/<?php echo $row->che_id; ?>" method="POST">
		<div class="form-group">
			<label for="Description">Description</label>
			<input type="text" class="form-control" id="description" name="description" placeholder="Description"
				value="<?php echo $row->che_description; ?>">
		</div>
		<div class="form-group">
			<label for="Photo_cheffe">Photo_cheffe</label>
			<input type="text" class="form-control" id="photo_cheffe" name="photo_cheffe" placeholder="Photo_cheffe"
				value="<?php echo $row->che_photo_cheffe; ?>">
		</div>
		<div class="form-group">
			<label for="Photo_plat">Photo_plat</label>
			<input type="text" class="form-control" id="photo_plat" name="photo_plat" placeholder="Photo_plat"
				value="<?php echo $row->che_photo_plat; ?>">
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
			<button type="submit" class="btn btn-primary">Modifier</button>
		</div>
	</form>
</div>
<?php include 'footer.php'?>
