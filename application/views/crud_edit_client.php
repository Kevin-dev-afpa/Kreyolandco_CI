<?php include 'header.php'?>

<h1>Edit</h1>
<div class="container">
<form action="<?php echo site_url('CrudController/update_client') ?>/<?php echo $row->cli_id; ?>" method="POST">
	<div class="form-group">
		<label for="Nom">Nom</label>
		<input type="text" class="form-control" id="nom" name="nom" placeholder="Smith" value="<?php echo $row->cli_nom; ?>">
	</div>
	<div class="form-group">
		<label for="Prénom">Prénom</label>
		<input type="text" class="form-control" id="prenom" name="prenom" placeholder="John" value="<?php echo $row->cli_prenom; ?>">
	</div>
	<div class="form-group">
		<label for="Téléphone">Téléphone</label>
		<input type="text" class="form-control" id="telephone" name="telephone" placeholder="0601020304" value="<?php echo $row->cli_telephone; ?>">
	</div>
	<div class="form-group">
		<label for="Email">Email</label>
		<input type="email" class="form-control" id="email" name="email" placeholder="johnsmith@hotmail.fr" value="<?php echo $row->cli_mail; ?>">
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
		<button type="submit" class="btn btn-primary">Ajouter</button>
	</div>
</form>
</div>
<?php include 'footer.php'?>
