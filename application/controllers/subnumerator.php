<?php



defined('BASEPATH') or exit('No direct script access allowed');

class Subnumerator extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Indikator_model', 'indikator');
    }

    public function index()
    {
        $this->template->load('template/template_backend', 'subnumerator/list_subnumerator');
    }

    public function add(){
        $data=array(
            'button' => 'Create',
            'action' => site_url('aplikasi_pj/create_action'),
        );
        $data['units']=$this->indikator->get_all_unit();
        $this->template->load('template/template_backend', 'subnumerator/add_subnumerator',$data);
    }



}