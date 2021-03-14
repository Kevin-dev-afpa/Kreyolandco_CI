<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Login_model');
    }

    public function index()
    {
        $this->load->view('login_view');
    }

    public function auth()
    {
        $email = $this->input->post('email', true);
        $password = $this->input->post('password', true);
        $result = $this->Login_model->check_user($email, $password);
        if ($result->num_rows() > 0) {
            $data = $result->row_array();
            $name = $data['util_nom'];
            $email = $data['util_mail'];
            $role = $data['util_rol_id'];
            $sesdata = array(
                'username' => $name,
                'email' => $email,
                'level' => $role,
                'logged_in' => true,
            );
            $this->session->set_userdata($sesdata);
            if ($role === '1') {
                redirect('Dev');
            } elseif ($role === '2') {
                redirect('Admin');
            } else {
                echo "<script>alert('accés refusé')</script>";
            }
            $this->load->view('login_view');
        }
    }
    public function logout()
    {
        $this->session->sess_destroy();
        redirect('Login');
    }
}
