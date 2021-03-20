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

// ******************************************************* //

    // ------------------ partie Diaporama ------------------ //

    // ------------------ Fin partie Diaporama ------------------ //

    // ******************************************************* //

    // ******************************************************* //

    // ------------------ partie Cheffe ------------------ //
    public function cheffe()
    {
        $data['result'] = $this->Crud_model->getAllDataCheffe();
        $this->load->view('cheffe', $data);
    }

    // Ici cela concerne la mise en place de la création cheffe
    public function create_cheffe()
    {
        $this->Crud_model->createDataCheffe();
        redirect('CrudController');
    }

    // Avec cette fonction je modifie les infos des cheffes.
    public function edit_cheffe($id)
    {
        $data['row'] = $this->Crud_model->getDataCheffe($id);
        $this->load->view('crud_edit_cheffe', $data);
    }

    // Avec cette fonction je met à jour les infos cheffe.
    public function update_cheffe($id)
    {
        $this->Crud_model->updateDataCheffe($id);
        redirect('CrudController');
    }

    // Ici je met en place la suppression des cheffes.
    public function delete_cheffe($id)
    {
        $this->Crud_model->deleteDataCheffe($id);
        redirect('CrudController');
    }

    // ------------------ Fin partie Cheffe ------------------ //

    // ******************************************************* //

    // ------------------ partie Service ------------------ //
    public function service()
    {
        $data['result'] = $this->Crud_model->getAllDataService();
        $this->load->view('service', $data);
    }

    // Ici cela concerne la mise en place de la création service
    public function create_service()
    {
        $this->Crud_model->createDataService();
        redirect('CrudController');
    }

    // Avec cette fonction je modifie les infos des services.
    public function edit_service($id)
    {
        $data['row'] = $this->Crud_model->getDataService($id);
        $this->load->view('crud_edit_service', $data);
    }

    // Avec cette fonction je met à jour les infos service.
    public function update_service($id)
    {
        $this->Crud_model->updateDataService($id);
        redirect('CrudController');
    }

    // Ici je met en place la suppression des services.
    public function delete_service($id)
    {
        $this->Crud_model->deleteDataService($id);
        redirect('CrudController');
    }
    // ------------------ Fin partie Service ------------------ //

    // ******************************************************* //

    // ------------------ partie Réservation ------------------ //

    // ------------------ Fin partie Réservation ------------------ //

    // ------------------ partie Evénement ------------------ //
    public function evenement()
    {
        $data['result'] = $this->Crud_model->getAllDataEvenement();
        $this->load->view('evenement', $data);
    }

    // Ici cela concerne la mise en place de la création evenement
    public function create_evenement()
    {
        $this->Crud_model->createDataEvenement();
        redirect('CrudController');
    }

    // Avec cette fonction je modifie les infos des evenements.
    public function edit_evenement($id)
    {
        $data['row'] = $this->Crud_model->getDataEvenement($id);
        $this->load->view('crud_edit_evenement', $data);
    }

    // Avec cette fonction je met à jour les infos evenement.
    public function update_evenement($id)
    {
        $this->Crud_model->updateDataEvenement($id);
        redirect('CrudController');
    }

    // Ici je met en place la suppression des evenements.
    public function delete_evenement($id)
    {
        $this->Crud_model->deleteDataEvenement($id);
        redirect('CrudController');
    }
    // ------------------ Fin partie Evénement ------------------ //

    // ******************************************************* //

    // ------------------ partie Tâche ------------------ //
    public function tache()
    {
        $data['result'] = $this->Crud_model->getAllDataTache();
        $this->load->view('tache', $data);
    }

    // Ici cela concerne la mise en place de la création tache
    public function create_tache()
    {
        $this->Crud_model->createDataTache();
        redirect('CrudController');
    }

    // Avec cette fonction je modifie les infos des taches.
    public function edit_tache($id)
    {
        $data['row'] = $this->Crud_model->getDataTache($id);
        $this->load->view('crud_edit_tache', $data);
    }

    // Avec cette fonction je met à jour les infos tache.
    public function update_tache($id)
    {
        $this->Crud_model->updateDataTache($id);
        redirect('CrudController');
    }

    // Ici je met en place la suppression des taches.
    public function delete_tache($id)
    {
        $this->Crud_model->deleteDataTache($id);
        redirect('CrudController');
    }
    // ------------------ Fin partie Tâche ------------------ //

    // ******************************************************* //

    // ------------------ partie Palmarès ------------------ //
    public function palmares()
    {
        $data['result'] = $this->Crud_model->getAllDataPalmares();
        $this->load->view('palmares', $data);
    }

    // Ici cela concerne la mise en place de la création palmares
    public function create_palmares()
    {
        $this->Crud_model->createDataPalmares();
        redirect('CrudController');
    }

    public function edit_Palmares($id)
    {
        $data['row'] = $this->Crud_model->getDataPalmares($id);
        $this->load->view('crud_edit_palmares', $data);
    }

    // Avec cette fonction je met à jour les infos palmares.
    public function update_palmares($id)
    {
        $this->Crud_model->updateDataPalmares($id);
        redirect('CrudController');
    }

    // Ici je met en place la suppression du palmares.
    public function delete_palmares($id)
    {
        $this->Crud_model->deleteDataPalmares($id);
        redirect('CrudController');
    }

    // ------------------ Fin partie Palmarès ------------------ //

    // ******************************************************* //

    // ------------------ partie Parcours ------------------ //
    public function parcours()
    {
        $data['result'] = $this->Crud_model->getAllDataParcours();
        $this->load->view('parcours', $data);
    }

    // Ici cela concerne la mise en place de la création parcours
    public function create_parcours()
    {
        $this->Crud_model->createDataParcours();
        redirect('CrudController');
    }

    public function edit_parcours($id)
    {
        $data['row'] = $this->Crud_model->getDataParcours($id);
        $this->load->view('crud_edit_parcours', $data);
    }

    // Avec cette fonction je met à jour les infos parcours.
    public function update_parcours($id)
    {
        $this->Crud_model->updateDataParcours($id);
        redirect('CrudController');
    }

    // Ici je met en place la suppression du parcours.
    public function delete_parcours($id)
    {
        $this->Crud_model->deleteDataParcours($id);
        redirect('CrudController');
    }
    // ------------------ Fin partie Parcours ------------------ //

    // ******************************************************* //
}
