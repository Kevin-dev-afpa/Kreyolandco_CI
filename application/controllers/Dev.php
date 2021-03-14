<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dev extends CI_Controller
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
        if ($this->session->userdata('level') === '1') {
            $this->load->view('dev_view');
        } else {
            echo "Accés refusé !";
        }
    }
}
