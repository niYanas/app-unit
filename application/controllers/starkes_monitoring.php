<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Starkes_monitoring extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Starkes_model', 'starkes');
        $this->js = 'assets/js/pmkp/starkes_mon.js';
    }

    public function index()
    {
        $data = array(
            'kodeunit' => '',
            'javascript' => $this->js,
            'units' => $this->starkes->get_all_unit()
        );
        $this->template->load('template/template_backend', 'starkes/starkes_mon', $data);
    }

    public function unit(){
        $data = array(
            'waktu'     => $this->input->post('tanggal'),
            'kodeunit'  => $this->input->post('unit'),
            'nums'      => $this->starkes->get_all_starkes_unit($this->input->post('unit')),
            'subnums'   => $this->starkes->get_all_substarkes_unit($this->input->post('unit')),
            'starkess'  => $this->starkes->get_all_starkes_nilai(
                            array('unit_id'=>$this->input->post('unit'))
                            ,$this->input->post('tanggal')),
            'beda'      => explode("-",$this->input->post('tanggal'))
        );
        $this->load->view('starkes/starkes_mon_unit',$data);
    }
}