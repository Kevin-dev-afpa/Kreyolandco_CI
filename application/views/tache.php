<?php include 'header.php'?>
<h1>Gestion des infos Tâche</h1>

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
					<h5 class="modal-title" id="exampleModalLabel">Formulaire d'ajout des tâches</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="<?php echo site_url('CrudController/create_tache') ?>" method="POST">
                    <div class="form-group">
							<label for="Description">Description</label>
							<input type="text" class="form-control" id="description" name="description"
								placeholder="description">
                        </div>
                        <div class="form-group">
							<label for="exp_id">Exp_id</label>
							<input type="text" class="form-control" id="exp_id" name="exp_id"
								placeholder="Description courte">
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
				<th scope="col">Description</th>
				<th scope="col">exp_id</th>
                <th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
            <?php foreach ($result as $row) {?>
			<tr>
				<th scope="row"><?php echo $row->tac_id; ?></th>
				<td><?php echo $row->tac_description; ?></td>
				<td><?php echo $row->tac_exp_id; ?></td>
                <td><a href="<?php echo site_url('CrudController/edit_tache'); ?>/<?php echo $row->tac_id ?>" >Editer</a> |
				<a href="<?php echo site_url('CrudController/delete_tache'); ?>/<?php echo $row->tac_id ?>">Supprimer</a></td>
            </tr>
            <?php }?>
		</tbody>
	</table>
</div>

<?php include 'footer.php'?>
