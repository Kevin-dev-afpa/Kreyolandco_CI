<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Kreyol And Co</title>
  </head>
  <body>
<!--Mise en place de la barre de navigation-->
<header>
    <div class="collapse bg-dark" id="navbarHeader">
      <div class="container">
        <div class="row">
          <div class="col-sm-8 col-md-7 py-4">
            <h4 class="text-white">Info</h4>
            <p class="text-muted"></p>
          </div>
          <div class="col-sm-4 offset-md-1 py-4">
            <h4 class="text-white">Contact</h4>
            <ul class="list-unstyled">
              <li><a href="https://twitter.com/kreyolandco" target="_blank" class="text-white">Suivez moi sur
                  Twitter</a>
              <li><a href="https://www.facebook.com/KreyolandCo" target="_blank" class="text-white">Suivez moi sur
                  Facebook</a></li>
              <li><a href="https://www.instagram.com/katia_desprez_kreyolandco/" target="_blank"
                  class="text-white">Suivez moi sur Instagram</a></li>
              <li><a href="<?=site_url('Administration/contact')?>" class="text-white">Contactez moi</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="navbar navbar-dark bg-dark shadow-sm">
      <div class="container d-flex justify-content-around">
        <a href="<?php echo site_url('Welcome/index') ?>" class="navbar-brand d-flex align-items-center text-white-50 bg-dark">
          <strong>Kreyol And Co</strong>
        </a>
        <a href="" class="navbar-brand d-flex align-items-center text-white-50 bg-dark">
          <strong>Atelier culinaire</strong>
        </a>
        <a href=""
          class="navbar-brand d-flex align-items-center text-white-50 bg-dark">
          <strong>Cheffe à domicile</strong>
        </a>
        <a href=""
          class="navbar-brand d-flex align-items-center text-white-50 bg-dark">
          <strong>Cheffe à domicile</strong>
        </a>
        <a href="<?php echo site_url('Login/logout') ?>"
          class="navbar-brand d-flex align-items-center text-white-50 bg-dark">
          <strong>Déconnection</strong>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader"
          aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
    </div>
  </header>
</nav>