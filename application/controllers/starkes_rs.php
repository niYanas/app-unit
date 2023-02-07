<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Starkes_rs extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Starkes_model', 'starkes');
        $this->js = 'assets/js/pmkp/starkes_rs.js';
    }

    public function index()
    {
        $data = array(
            'javascript' => $this->js,
            'kodes'=>$this->starkes->get_all_kode(),
            'kode_monitoring'=>''
        );
        $this->template->load('template/template_backend', 'starkes/starkes_rs', $data);
    }

}