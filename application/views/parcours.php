<?php include 'header.php'?>
<h1>Gestion du parcours</h1>

<div class="container">
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
		Ajouter
	</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Formulaire d'ajout du parcours</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="<?php echo site_url('CrudController/create_parcours') ?>" method="POST">
                    <div class="form-group">
							<label for="poste_occupe">poste_occupe</label>
							<input type="text" class="form-control" id="poste_occupe" name="poste_occupe"
								placeholder="poste_occupe">
                        </div>
                        <div class="form-group">
							<label for="entreprise">entreprise</label>
							<input type="text" class="form-control" id="entreprise" name="entreprise"
								placeholder="entreprise">
                        </div>
                        <div class="form-group">
							<label for="che_id">che_id</label>
							<input type="text" class="form-control" id="che_id" name="che_id"
								placeholder="che_id">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
                            <button type="submit" class="btn btn-primary">Ajouter</button>
                        </div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Poste occupe</th>
				<th scope="col">entreprise</th>
				<th scope="col">Cheffe id</th>
                <th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
        <?php foreach ($result as $row) {?>
			<tr>
				<th scope="row"><?php echo $row->exp_id; ?></th>
				<td><?php echo $row->exp_poste_occupe; ?></td>
				<td><?php echo $row->exp_entreprise; ?></td>
				<td><?php echo $row->exp_che_id; ?></td>
                <td><a href="<?php echo site_url('CrudController/edit_parcours'); ?>/<?php echo $row->exp_id ?>" >Editer</a> |
				<a href="<?php echo site_url('CrudController/delete_parcours'); ?>/<?php echo $row->exp_id ?>">Supprimer</a></td>
            </tr>
            <?php }?>
		</tbody>
	</table>
</div>

<?php include 'footer.php'?>