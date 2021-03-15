<?php include 'header.php'?>
<h1>Gestion des infos service</h1>

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
					<h5 class="modal-title" id="exampleModalLabel">Formulaire d'ajout de service</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="<?php echo site_url('CrudController/create_service') ?>" method="POST">
                    <div class="form-group">
							<label for="Date">Date</label>
							<input type="date" class="form-control" id="date" name="date"
								placeholder="Description">
                        </div>
                        <div class="form-group">
							<label for="Code_postal">Code postal</label>
							<input type="text" class="form-control" id="cp" name="cp"
								placeholder="Code postal">
						</div>
                        <div class="form-group">
							<label for="Lieu">Lieu</label>
							<input type="text" class="form-control" id="lieu" name="lieu"
								placeholder="Lieu">
                        </div>
                        <div class="form-group">
							<label for="Capacité">Capacité</label>
							<input type="text" class="form-control" id="capacite" name="capacite"
								placeholder="Capacite">
                        </div>
                        <div class="form-group">
							<label for="Description courte">Description courte</label>
							<input type="text" class="form-control" id="description_courte" name="description_courte"
								placeholder="Description courte">
                        </div>
                        <div class="form-group">
							<label for="Description longue">Description longue</label>
							<input type="text" class="form-control" id="description_longue" name="description_longue"
								placeholder="Description longue">
                        </div>
                        <div class="form-group">
							<label for="Ser_type">Ser_type</label>
							<input type="text" class="form-control" id="type" name="type"
								placeholder="type">
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
				<th scope="col">Date</th>
				<th scope="col">Code postal</th>
				<th scope="col">Lieu</th>
                <th scope="col">Capacite</th>
				<th scope="col">Description courte</th>
				<th scope="col">Description longue</th>
                <th scope="col">Type</th>
                <th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
            <?php foreach ($result as $row) {?>
			<tr>
				<th scope="row"><?php echo $row->ser_id; ?></th>
				<td><?php echo $row->ser_date; ?></td>
				<td><?php echo $row->ser_cp; ?></td>
				<td><?php echo $row->ser_lieu; ?></td>
                <td><?php echo $row->ser_capacite; ?></td>
				<td><?php echo $row->ser_description_courte; ?></td>
				<td><?php echo $row->ser_description_longue; ?></td>
                <td><?php echo $row->ser_type; ?></td>
                <td><a href="<?php echo site_url('CrudController/edit_service'); ?>/<?php echo $row->ser_id ?>" >Editer</a> |
				<a href="<?php echo site_url('CrudController/delete_service'); ?>/<?php echo $row->ser_id ?>">Supprimer</a></td>
            </tr>
            <?php }?>
		</tbody>
	</table>
</div>

<?php include 'footer.php'?>
