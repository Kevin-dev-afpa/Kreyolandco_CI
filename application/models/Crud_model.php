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
        // Je crée un tableau qui va contenir toutes les info de mon formulaire d'ajout de client
        $data = array(
            'cli_nom' => $this->input->post('nom'),
            'cli_prenom' => $this->input->post('prenom'),
            'cli_telephone' => $this->input->post('telephone'),
            'cli_mail' => $this->input->post('email'),
        );
        $this->db->insert('Client', $data);
    }

    public function getAllDataClient()
    {
        $query = $this->db->query('SELECT * FROM Client');
        return $query->result();
    }
    public function getDataClient($id)
    {
        $query = $this->db->query('SELECT * FROM Client WHERE cli_id =' . $id);
        return $query->row();
    }

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

    public function deleteDataClient($id)
    {
        $this->db->where('cli_id', $id);
        $this->db->delete('Client');
    }
}
