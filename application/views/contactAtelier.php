<?php
include "header.php"
?>
<!-- Gros titre -->
<div class="container">
    <div class="py-5 text-center">
        <div class="alert alert-light" role="alert">
            <h1>Atelier culinaire</h1>
        </div>
        <h2>Formulaire de contact</h2>
        <p class="lead">J'aimerais en savoir plus sur votre projet pour vous proposer un atelier de qualité, remplissez
            ce formulaire et je vous répondrais au plus vite.</p>
    </div>
<!-- Div de séparation entre les deux parties -->
    <div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
        <div class="col-md-8 order-md-1">

            <!-- Début du formulaire -->
        <?php echo form_open("Contact/atelier"); ?>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="nom">Nom :</label>
                        <?php echo form_error('nom'); ?>
                        <input type="text" class="form-control" id="nom" name="nom" placeholder="" value="<?php echo set_value('nom'); ?>" required="">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="prenom">Prénom :</label>
                        <?php echo form_error('prenom'); ?>
                        <input type="text" class="form-control" id="prenom" name="prenom" placeholder="" value="<?php echo set_value('prenom'); ?>" required="">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="nbPersonne">Nombre de personne :</label>
                        <?php echo form_error('nbpersonne'); ?>
                        <input type="numeric" class="form-control" id="nbpersonne" name="nbpersonne" placeholder="" value="<?php echo set_value('nbpersonne'); ?>" required="">
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email">Email :</label>
                    <?php echo form_error('email'); ?>
                    <input type="email" class="form-control" id="email" name="email" placeholder="mon@email.com" value="<?php echo set_value('email'); ?>">
                </div>
                <div class="mb-3">
                    <label for="votreDemande">Votre demande :</label>
                    <?php echo form_error('demande'); ?>
                    <textarea class="form-control" id="demande" name="demande" placeholder="Décrivez votre projet" value="<?php echo set_value('demande'); ?>"></textarea>
                </div>


                <hr class="mb-4">
                <button class="btn btn-primary btn-lg btn-block" type="submit">Envoyer</button>
                <hr class="mb-4">
            </form>
        </div>

<!-- Caroussel contenant les photos de l'atelier -->
        <div class="container">
            <div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active" data-interval="3000">
                        <img src="<?=base_url('assets/images/accueil/photo1.jpg')?>" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item" data-interval="3000">
                        <img src="<?=base_url('assets/images/accueil/photo2.jpg')?>" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="<?=base_url('assets/images/accueil/photo3.jpg')?>" class="d-block w-100" alt="...">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</div>

<?php
include "footer.php"
?>