<?php



defined('BASEPATH') or exit('No direct script access allowed');

class Numerator extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
       $this->load->model('Indikator_model', 'indikator');
    }

    public function index()
    {
        $this->template->load('template/template_backend', 'numerator/list_numerator');
    }

    public function add(){
        $data=array(
            'button' => 'Create',
            'action' => site_url('aplikasi_pj/create_action'),
        );
        $data['units']=$this->indikator->get_all_unit();
        $this->template->load('template/template_backend', 'numerator/add_numerator',$data);
    }

}