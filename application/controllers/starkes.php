<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Starkes extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Starkes_model', 'starkes');
        $this->js = 'assets/js/pmkp/starkesxx.js';
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;

        $data = array(
            'kodeunit' => 'B-VL-001',
            'javascript' => $this->js,
            'units' => $this->starkes->get_all_unit(),
            'min' => new DateTime(),
            'max' => new DateTime(),
            'nums' => $this->starkes->get_all_starkes_unit('B-VL-001'),
            'subnums' => $this->starkes->get_all_substarkes_unit('B-VL-001')
        );

        $this->template->load('template/template_backend', 'starkes/starkes_list', $data);
    }

    public function cari_starkes()
    {
        $data = array(
            'nums' => $this->starkes->get_all_starkes_unit($this->input->post('unit')),
            'subnums' => $this->starkes->get_all_substarkes_unit($this->input->post('unit'))
        );
        $this->load->view('starkes/detil', $data);
    }

    public function insert_bulk()
    {
        $data = $this->input->post('data');

        $hasil = $this->starkes->periksa_starkes(
            array(
                'tanggal_star' => $data['tanggal_star'][0],
                'unit_star' => $data['unit_star'][0],
            )
        );

        if ($hasil >= 1) {           
            echo $hasil."##Starkes Tanggal ".$data['tanggal_star'][0]." Sudah <strong>ADA</strong>,
                    <br><strong>Data</strong> Ingin diperbaharui ?</strong>";
        } else {
           $this->insert($data);
        }
    }

    public function insert($data){
        $jumlahData = count($data['tanggal_star']);
        for ($i = 0; $i < $jumlahData; $i++) {
            $insert = array(
                'tanggal_star' => $data['tanggal_star'][$i],
                'unit_star' => $data['unit_star'][$i],
                'indikator' => $data['indikator'][$i],
                'numerator' =>  $data['numerator'][$i],
                'subnumerator' => '0',
                'nilai' => $data['nilai'][$i],
            );
            $this->starkes->insert($insert);
        }
    }

    public function reset_starkes(){
        $data = $this->input->post('data');
        $this->starkes->delete(
                array(
                    'tanggal_star' => $data['tanggal_star'][0],
                    'unit_star' => $data['unit_star'][0],
                )
        );
        $this->insert($data);
    } 
}
