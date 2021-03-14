<?php include 'header.php'?>

<h1>Edit</h1>
<div class="container">
	<form action="<?php echo site_url('CrudController/update_professionnels') ?>/<?php echo $row->pro_id; ?>" method="POST">
		<div class="form-group">
			<label for="Nom">Nom</label>
			<input type="text" class="form-control" id="nom" name="nom" placeholder="Smith"
				value="<?php echo $row->pro_nom; ?>">
		</div>
		<div class="form-group">
			<label for="Email">Email</label>
			<input type="email" class="form-control" id="email" name="email" placeholder="johnsmith@hotmail.fr"
				value="<?php echo $row->pro_mail; ?>">
		</div>
		<div class="form-group">
			<label for="Téléphone">Téléphone</label>
			<input type="text" class="form-control" id="telephone" name="telephone" placeholder="0601020304"
				value="<?php echo $row->pro_telephone; ?>">
		</div>
		<div class="form-group">
			<label for="Observation">Observation</label>
			<input type="text" class="form-control" id="observation" name="observation" placeholder="John"
				value="<?php echo $row->pro_observation; ?>">
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
			<button type="submit" class="btn btn-primary">Modifier</button>
		</div>
	</form>
</div>
<?php include 'footer.php'?>
