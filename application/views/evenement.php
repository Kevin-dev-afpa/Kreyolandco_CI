<?php include 'header.php'?>
<h1>Gestion des infos Evénement</h1>

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
					<h5 class="modal-title" id="exampleModalLabel">Formulaire d'ajout d'événement'</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="<?php echo site_url('CrudController/create_evenement') ?>" method="POST">
                    <div class="form-group">
							<label for="Titre">Titre</label>
							<input type="text" class="form-control" id="titre" name="titre"
								placeholder="Titre">
                        </div>
                        <div class="form-group">
							<label for="Description_courte">Description courte</label>
							<input type="text" class="form-control" id="description_courte" name="description_courte"
								placeholder="Description courte">
						</div>
                        <div class="form-group">
							<label for="description_longue">Description_longue</label>
							<input type="text" class="form-control" id="description_longue" name="description_longue"
								placeholder="description_longue">
                        </div>
                        <div class="form-group">
							<label for="Cheffe_id">Cheffe_id</label>
							<input type="text" class="form-control" id="eve_che_id" name="eve_che_id"
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
				<th scope="col">Titre</th>
				<th scope="col">Description courte</th>
				<th scope="col">Description longue</th>
                <th scope="col">Eve_id</th>
                <th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
            <?php foreach ($result as $row) {?>
			<tr>
				<th scope="row"><?php echo $row->eve_id; ?></th>
				<td><?php echo $row->eve_titre; ?></td>
				<td><?php echo $row->eve_description_courte; ?></td>
				<td><?php echo $row->eve_description_longue; ?></td>
                <td><?php echo $row->eve_che_id; ?></td>
                <td><a href="<?php echo site_url('CrudController/edit_evenement'); ?>/<?php echo $row->eve_id ?>" >Editer</a> |
				<a href="<?php echo site_url('CrudController/delete_evenement'); ?>/<?php echo $row->eve_id ?>">Supprimer</a></td>
            </tr>
            <?php }?>
		</tbody>
	</table>
</div>

<?php include 'footer.php'?>
