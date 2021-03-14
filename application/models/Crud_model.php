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
        $this->db->delete('professionnel');
    }
    // ------------------ Fin partie professionnel ------------------ //
}
