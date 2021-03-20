<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Crud_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    // ------------------ partie Client ------------------ //
    public function createDataClient()
    {
        // Je crée un tableau qui va contenir toutes les info de mon formulaire d'ajout de client.
        $data = array(
            'cli_nom' => $this->input->post('nom'),
            'cli_prenom' => $this->input->post('prenom'),
            'cli_telephone' => $this->input->post('telephone'),
            'cli_mail' => $this->input->post('email'),
        );
        $this->db->insert('Client', $data);
    }

    // Je récupère toutes les infos de mes clients en bdd.
    public function getAllDataClient()
    {
        $query = $this->db->query('SELECT * FROM Client');
        return $query->result();
    }

    // Je récupère les infos selon l'ID de mes clients.
    public function getDataClient($id)
    {
        $query = $this->db->query('SELECT * FROM Client WHERE cli_id =' . $id);
        return $query->row();
    }

    // Je met à jour mes informations de mes clients.
    public function updateDataClient($id)
    {
        $data = array(
            'cli_nom' => $this->input->post('nom'),
            'cli_prenom' => $this->input->post('prenom'),
            'cli_telephone' => $this->input->post('telephone'),
            'cli_mail' => $this->input->post('email'),
        );
        $this->db->where('cli_id', $id);
        $this->db->update('Client', $data);
    }

    // Je supprime les infos de ma bdd de mes clients.
    public function deleteDataClient($id)
    {
        $this->db->where('cli_id', $id);
        $this->db->delete('Client');
    }
    // ------------------ Fin partie Client ------------------ //

    // ******************************************************* //

    // ------------------ partie professionnel ------------------ //
    public function createDataProfessionnel()
    {
        // Je crée un tableau qui va contenir toutes les info de mon formulaire d'ajout de client.
        $data = array(
            'pro_nom' => $this->input->post('nom'),
            'pro_mail' => $this->input->post('email'),
            'pro_telephone' => $this->input->post('telephone'),
            'pro_observation' => $this->input->post('observation'),
        );
        $this->db->insert('Professionnel', $data);
    }

    // Je récupère toutes les infos de mes professionnels en bdd.
    public function getAllDataProfessionnel()
    {
        $query = $this->db->query('SELECT * FROM Professionnel');
        return $query->result();
    }

    // Je récupère les infos selon l'ID du professionnel.
    public function getDataProfessionnel($id)
    {
        $query = $this->db->query('SELECT * FROM Professionnel WHERE pro_id =' . $id);
        return $query->row();
    }

    // Je met à jour mes informations de mes professionnels.
    public function updateDataProfessionnel($id)
    {
        $data = array(
            'pro_nom' => $this->input->post('nom'),
            'pro_mail' => $this->input->post('email'),
            'pro_telephone' => $this->input->post('telephone'),
            'pro_observation' => $this->input->post('observation'),
        );
        $this->db->where('pro_id', $id);
        $this->db->update('Professionnel', $data);
    }

    // Je supprime les infos de ma bdd professionnel.
    public function deleteDataProfessionnel($id)
    {
        $this->db->where('pro_id', $id);
        $this->db->delete('Professionnel');
    }
    // ------------------ Fin partie professionnel ------------------ //

    // ******************************************************* //

    // ------------------ partie Diaporama ------------------ //

    // ------------------ Fin partie Diaporama ------------------ //

    // ******************************************************* //

    // ******************************************************* //

    // ------------------ partie Cheffe ------------------ //
    public function createDataCheffe()
    {
        // Je crée un tableau qui va contenir toutes les info de mon formulaire d'ajout de cheffe.
        $data = array(
            'che_description' => $this->input->post('description'),
            'che_photo_cheffe' => $this->input->post('photo_cheffe'),
            'che_photo_plat' => $this->input->post('photo_plat'),
        );
        $this->db->insert('Cheffe', $data);
    }

    // Je récupère toutes les infos de mes cheffe en bdd.
    public function getAllDataCheffe()
    {
        $query = $this->db->query('SELECT * FROM Cheffe');
        return $query->result();
    }

    // Je récupère les infos selon l'ID du cheffe.
    public function getDataCheffe($id)
    {
        $query = $this->db->query('SELECT * FROM Cheffe WHERE che_id =' . $id);
        return $query->row();
    }

    // Je met à jour mes informations de mes cheffes.
    public function updateDataCheffe($id)
    {
        $data = array(
            'che_description' => $this->input->post('description'),
            'che_photo_cheffe' => $this->input->post('photo_cheffe'),
            'che_photo_plat' => $this->input->post('photo_plat'),
        );
        $this->db->where('che_id', $id);
        $this->db->update('Cheffe', $data);
    }

    // Je supprime les infos de ma bdd cheffe.
    public function deleteDataCheffe($id)
    {
        $this->db->where('che_id', $id);
        $this->db->delete('Cheffe');
    }

    // ------------------ Fin partie Cheffe ------------------ //

    // ******************************************************* //

    // ------------------ partie Service ------------------ //
    public function createDataService()
    {
        // Je crée un tableau qui va contenir toutes les info de mon formulaire d'ajout de cheffe.
        $data = array(
            'ser_date' => $this->input->post('date'),
            'ser_cp' => $this->input->post('cp'),
            'ser_lieu' => $this->input->post('lieu'),
            'ser_capacite' => $this->input->post('capacite'),
            'ser_description_courte' => $this->input->post('description_courte'),
            'ser_description_longue' => $this->input->post('description_longue'),
            'ser_type' => $this->input->post('type'),
        );
        $this->db->insert('Service', $data);
    }

    // Je récupère toutes les infos de mes cheffe en bdd.
    public function getAllDataService()
    {
        $query = $this->db->query('SELECT * FROM Service');
        return $query->result();
    }

    // Je récupère les infos selon l'ID du cheffe.
    public function getDataService($id)
    {
        $query = $this->db->query('SELECT * FROM Service WHERE ser_id =' . $id);
        return $query->row();
    }

    // Je met à jour mes informations de mes cheffes.
    public function updateDataService($id)
    {
        $data = array(
            'ser_date' => $this->input->post('date'),
            'ser_cp' => $this->input->post('cp'),
            'ser_lieu' => $this->input->post('lieu'),
            'ser_capacite' => $this->input->post('capacite'),
            'ser_description_courte' => $this->input->post('description_courte'),
            'ser_description_longue' => $this->input->post('description_longue'),
            'ser_type' => $this->input->post('type'),
        );
        $this->db->where('ser_id', $id);
        $this->db->update('Service', $data);
    }

    // Je supprime les infos de ma bdd cheffe.
    public function deleteDataService($id)
    {
        $this->db->where('ser_id', $id);
        $this->db->delete('Service');
    }
    // ------------------ Fin partie Service ------------------ //

    // ******************************************************* //

    // ------------------ partie Réservation ------------------ //

    // ------------------ Fin partie Réservation ------------------ //

    // ------------------ partie Evénement ------------------ //
    public function createDataEvenement()
    {
        // Je crée un tableau qui va contenir toutes les info de mon formulaire d'ajout de client.
        $data = array(
            'eve_titre' => $this->input->post('titre'),
            'eve_description_courte' => $this->input->post('description_courte'),
            'eve_description_longue' => $this->input->post('description_longue'),
            'eve_che_id' => $this->input->post('eve_che_id'),
        );
        $this->db->insert('Evenement', $data);
    }

    // Je récupère toutes les infos de mes clients en bdd.
    public function getAllDataEvenement()
    {
        $query = $this->db->query('SELECT * FROM Evenement');
        return $query->result();
    }

    // Je récupère les infos selon l'ID de mes clients.
    public function getDataEvenement($id)
    {
        $query = $this->db->query('SELECT * FROM Evenement WHERE eve_id =' . $id);
        return $query->row();
    }

    // Je met à jour mes informations de mes clients.
    public function updateDataEvenement($id)
    {
        $data = array(
            'eve_titre' => $this->input->post('titre'),
            'eve_description_courte' => $this->input->post('description_courte'),
            'eve_description_longue' => $this->input->post('description_longue'),
            'eve_che_id' => $this->input->post('eve_che_id'),
        );
        $this->db->where('eve_id', $id);
        $this->db->update('Evenement', $data);
    }

    // Je supprime les infos de ma bdd de mes clients.
    public function deleteDataEvenement($id)
    {
        $this->db->where('eve_id', $id);
        $this->db->delete('Evenement');
    }
    // ------------------ Fin partie Evénement ------------------ //

    // ******************************************************* //

    // ------------------ partie Tâche ------------------ //
    public function createDataTache()
    {
        // Je crée un tableau qui va contenir toutes les info de mon formulaire d'ajout de client.
        $data = array(
            'tac_description' => $this->input->post('description'),
            'tac_exp_id' => $this->input->post('exp_id'),
        );
        $this->db->insert('Tache', $data);
    }

    // Je récupère toutes les infos de mes clients en bdd.
    public function getAllDataTache()
    {
        $query = $this->db->query('SELECT * FROM Tache');
        return $query->result();
    }

    // Je récupère les infos selon l'ID de mes clients.
    public function getDataTache($id)
    {
        $query = $this->db->query('SELECT * FROM Tache WHERE tac_id =' . $id);
        return $query->row();
    }

    // Je met à jour mes informations de mes clients.
    public function updateDataTache($id)
    {
        $data = array(
            'tac_description' => $this->input->post('description'),
            'tac_exp_id' => $this->input->post('exp_id'),
        );
        $this->db->where('tac_id', $id);
        $this->db->update('Tache', $data);
    }

    // Je supprime les infos de ma bdd de mes clients.
    public function deleteDataTache($id)
    {
        $this->db->where('tac_id', $id);
        $this->db->delete('Tache');
    }
    // ------------------ Fin partie Tâche ------------------ //

    // ******************************************************* //

    // ------------------ partie Palmarès ------------------ //

    public function createDataPalmares()
    {
        // Je crée un tableau qui va contenir toutes les info de mon formulaire d'ajout du palmares.
        $data = array(
            'pal_intitule' => $this->input->post('intitule'),
            'pal_date_obtention' => $this->input->post('date_obtention'),
            'pal_description' => $this->input->post('description'),
            'pal_che_id' => $this->input->post('che_id'),
        );
        $this->db->insert('Palmares', $data);
    }

    public function getAllDataPalmares()
    {
        $query = $this->db->query('SELECT * FROM Palmares');
        return $query->result();
    }

    public function getDataPalmares($id)
    {
        $query = $this->db->query('SELECT * FROM Palmares WHERE pal_id =' . $id);
        return $query->row();
    }

    // Je met à jour mes informations du palmares.
    public function updateDataPalmares($id)
    {
        $data = array(
            'pal_intitule' => $this->input->post('intitule'),
            'pal_date_obtention' => $this->input->post('date_obtention'),
            'pal_description' => $this->input->post('description'),
            'pal_che_id' => $this->input->post('che_id'),
        );
        $this->db->where('pal_id', $id);
        $this->db->update('Palmares', $data);
    }
    // ------------------ Fin partie Palmarès ------------------ //

    // ******************************************************* //

    // ------------------ partie Parcours ------------------ //
    public function createDataParcours()
    {
        // Je crée un tableau qui va contenir toutes les info de mon formulaire d'ajout du Parcours.
        $data = array(
            'exp_poste_occupe' => $this->input->post('poste_occupe'),
            'exp_entreprise' => $this->input->post('entreprise'),
            'exp_che_id' => $this->input->post('che_id'),
        );
        $this->db->insert('Parcours', $data);
    }

    public function getAllDataParcours()
    {
        $query = $this->db->query('SELECT * FROM Parcours');
        return $query->result();
    }

    public function getDataParcours($id)
    {
        $query = $this->db->query('SELECT * FROM Parcours WHERE exp_id =' . $id);
        return $query->row();
    }

    // Je met à jour mes informations du Parcours.
    public function updateDataParcours($id)
    {
        $data = array(
            'exp_poste_occupe' => $this->input->post('poste_occupe'),
            'exp_entreprise' => $this->input->post('entreprise'),
            'exp_che_id' => $this->input->post('che_id'),
        );
        $this->db->where('exp_id', $id);
        $this->db->update('Parcours', $data);
    }
    // ------------------ Fin partie Parcours ------------------ //

    // ******************************************************* //
}
