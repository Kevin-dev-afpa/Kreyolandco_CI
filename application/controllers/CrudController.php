<?php
defined('BASEPATH') or exit('No direct script access allowed');

class CrudController extends CI_Controller
{
    // Je met en place la fonction de base
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Crud_model');
    }

    // Je charge la page d'accueil de mon crud général
    public function index()
    {
        $this->load->view('crud_view');
    }

    // ------------------ partie Client ------------------ //
    // Je charge la pagede gestion de mes clients
    public function client()
    {
        $data['result'] = $this->Crud_model->getAllDataClient();
        $this->load->view('client', $data);
    }

    // Ici cela concerne la mise en place de la création client
    public function create_client()
    {
        $this->Crud_model->createDataClient();
        redirect('CrudController');
    }

    // Avec cette fonction je modifie les infos des clients.
    public function edit_client($id)
    {
        $data['row'] = $this->Crud_model->getDataClient($id);
        $this->load->view('crud_edit_client', $data);
    }

    // Avec cette fonction je met à jour les infos clients.
    public function update_client($id)
    {
        $this->Crud_model->updateDataClient($id);
        redirect('CrudController');
    }

    // Ici je met en place la suppression des clients.
    public function delete_client($id)
    {
        $this->Crud_model->deleteDataClient($id);
        redirect('CrudController');
    }
// ------------------ Fin partie Client ------------------ //

// ******************************************************* //

// ------------------ partie professionnel ------------------ //
    public function professionnel()
    {
        $data['result'] = $this->Crud_model->getAllDataProfessionnel();
        $this->load->view('professionnel', $data);
    }

    // Ici cela concerne la mise en place de la création professionnel
    public function create_professionnel()
    {
        $this->Crud_model->createDataProfessionnel();
        redirect('CrudController');
    }

    // Avec cette fonction je modifie les infos des professionnels.
    public function edit_professionnel($id)
    {
        $data['row'] = $this->Crud_model->getDataProfessionnel($id);
        $this->load->view('crud_edit_professionnel', $data);
    }

    // Avec cette fonction je met à jour les infos professionnels.
    public function update_professionnels($id)
    {
        $this->Crud_model->updateDataProfessionnel($id);
        redirect('CrudController');
    }

    // Ici je met en place la suppression des professionnels.
    public function delete_professionnel($id)
    {
        $this->Crud_model->deleteDataProfessionnel($id);
        redirect('CrudController');
    }
// ------------------ Fin partie professionnel ------------------ //
}
