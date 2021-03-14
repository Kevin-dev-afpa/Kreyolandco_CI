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

    public function create_client()
    {
        $this->Crud_model->createDataClient();
        redirect('CrudController');
    }

    public function edit_client($id)
    {
        $data['row'] = $this->Crud_model->getDataClient($id);
        $this->load->view('crud_edit_client', $data);
    }

    public function update_client($id)
    {
        $this->Crud_model->updateDataClient($id);
        redirect('CrudController');
    }

    public function delete_client($id)
    {
        $this->Crud_model->deleteDataClient($id);
        redirect('CrudController');
    }
// ------------------ Fin partie Client ------------------ //
}
