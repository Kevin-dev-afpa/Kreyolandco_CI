<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login_model extends CI_Model
{
    public function check_user($email, $password)
    {
        $this->db->select('*'); // Select all
        $this->db->from('Utilisateur'); // Sur la table utilisateur
        $this->db->where('util_mail', $email); // Ou le mais est égal au mail de la BDD
        $this->db->where('util_mdp', md5($password)); // Et le mot de passe au format MD5
        $query = $this->db->get(); // Obtenir les donnée de la BDD
        return $query;
    }
}
