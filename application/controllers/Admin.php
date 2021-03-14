<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('logged_in') !== true) {
            redirect('Login');
        }
    }

    public function index()
    {
        if ($this->session->userdata('level') === '2') {
            $this->load->view('admin_view');
        } else {
            echo "Accés refusé !";
        }
    }
}
