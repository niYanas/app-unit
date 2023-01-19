<?php



defined('BASEPATH') or exit('No direct script access allowed');

class Numerator extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
       $this->load->model('Numerator_model', 'numerator');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));

        if ($q <> '') {
            $config['base_url'] = base_url() . 'numerator/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'numerator/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'numerator/index.html';
            $config['first_url'] = base_url() . 'numerator/index.html';
        }
        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        if (empty($q)){
            $config['total_rows'] = $this->numerator->total_rows();
            $numerator = $this->numerator->get_limit_data($config['per_page'], $start);
        } else {
            $config['total_rows'] = $this->numerator->total_rows_search($q);
            $numerator = $this->numerator->get_limit_data_search($config['per_page'], $start, $q);
        }
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'numerators' => $numerator,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );

        $this->template->load('template/template_backend', 'numerator/list_numerator',$data);
    }

    public function add(){
        $data=array(
            'button' => 'Create',
            'javascript' => 'assets/js/pmkp/numerator.js',
        );
        $data['units']=$this->numerator->get_all_unit();
        $this->template->load('template/template_backend', 'numerator/add_numerator',$data);
    }

    public function cari_indikator_unit(){
        $this->numerator->get_all_indikator($this->input->post('unit'));
    }

}