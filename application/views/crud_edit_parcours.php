<?php include 'header.php'?>

<h1>Edit Parcours</h1>
<div class="container">
	<form action="<?php echo site_url('CrudController/update_parcours') ?>/<?php echo $row->exp_id; ?>" method="POST">
    <div class="form-group">
							<label for="poste_occupe">poste_occupe</label>
							<input type="text" class="form-control" id="poste_occupe" name="poste_occupe"
								placeholder="poste_occupe" value="<?php echo $row->exp_poste_occupe; ?>">
                        </div>
                        <div class="form-group">
							<label for="entreprise">entreprise</label>
							<input type="text" class="form-control" id="entreprise" name="entreprise"
								placeholder="entreprise" value="<?php echo $row->exp_entreprise; ?>">
                        </div>
                        <div class="form-group">
							<label for="che_id">che_id</label>
							<input type="text" class="form-control" id="che_id" name="che_id"
								placeholder="che_id" value="<?php echo $row->exp_che_id; ?>">
                        </div>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
			<button type="submit" class="btn btn-primary">Ajouter</button>
		</div>
	</form>
</div>
<?php include 'footer.php'?>
