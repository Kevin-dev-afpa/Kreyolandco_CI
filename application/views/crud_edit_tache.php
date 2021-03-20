<?php include 'header.php'?>

<h1>Edit Tache</h1>
<div class="container">
	<form action="<?php echo site_url('CrudController/update_tache') ?>/<?php echo $row->tac_id; ?>" method="POST">
		<div class="form-group">
			<label for="description">description</label>
			<input type="text" class="form-control" id="description" name="description" placeholder="description"
				value="<?php echo $row->tac_description; ?>">
		</div>
		<div class="form-group">
			<label for="exp_id">Description courte</label>
			<input type="text" class="form-control" id="exp_id" name="exp_id" placeholder="Description courte"
                value="<?php echo $row->tac_exp_id; ?>">
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
			<button type="submit" class="btn btn-primary">Ajouter</button>
		</div>
	</form>
</div>
<?php include 'footer.php'?>
