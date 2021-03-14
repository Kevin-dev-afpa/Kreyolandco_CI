<?php include 'header.php'?>
<h1>Gestion des clients</h1>

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
					<h5 class="modal-title" id="exampleModalLabel">Formulaire d'ajout de client</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="<?php echo site_url('CrudController/create_client') ?>" method="POST">
                    <div class="form-group">
							<label for="Nom">Nom</label>
							<input type="text" class="form-control" id="nom" name="nom"
								placeholder="Smith">
                        </div>
                        <div class="form-group">
							<label for="Prénom">Prénom</label>
							<input type="text" class="form-control" id="prenom" name="prenom"
								placeholder="John">
                        </div>
                        <div class="form-group">
							<label for="Téléphone">Téléphone</label>
							<input type="text" class="form-control" id="telephone" name="telephone"
								placeholder="0601020304">
						</div>
						<div class="form-group">
							<label for="Email">Email</label>
							<input type="email" class="form-control" id="email" name="email"
								placeholder="johnsmith@hotmail.fr">
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
				<th scope="col">Nom</th>
				<th scope="col">Prénom</th>
				<th scope="col">Téléphone</th>
                <th scope="col">Mail</th>
                <th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
            <?php foreach ($result as $row) {?>
			<tr>
				<th scope="row"><?php echo $row->cli_id; ?></th>
				<td><?php echo $row->cli_nom; ?></td>
				<td><?php echo $row->cli_prenom; ?></td>
				<td><?php echo $row->cli_telephone; ?></td>
                <td><?php echo $row->cli_mail; ?></td>
                <td><a href="<?php echo site_url('CrudController/edit_client'); ?>/<?php echo $row->cli_id ?>" >Editer</a> |
				<a href="<?php echo site_url('CrudController/delete_client'); ?>/<?php echo $row->cli_id ?>">Supprimer</a></td>
            </tr>
            <?php }?>
		</tbody>
	</table>
</div>

<?php include 'footer.php'?>
