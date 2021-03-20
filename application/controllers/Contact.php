<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Contact extends CI_Controller
{
// Ici je charge la page d'acceuil de tous mes formulaire de contact
    public function index()
    {
        $this->load->view('contact');
    }

    // Ici je m'intéresse plus particulièrement au formulaire de contact pour l'atelier
    public function contactAtelier()
    {
        $this->load->view('contactAtelier');
    }

    // Ici je m'intéresse plus particulièrement au formulaire de contact pour cheffe à domicile
    public function contactDomicile()
    {
        $this->load->view('contactDomicile');
    }
}
