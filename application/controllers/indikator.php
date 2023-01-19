<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Indikator extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
       $this->load->model('Indikator_model', 'indikator');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));

        if ($q <> '') {
            $config['base_url'] = base_url() . 'surat_keluar/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'surat_keluar/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'surat_keluar/index.html';
            $config['first_url'] = base_url() . 'surat_keluar/index.html';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        if (empty($q)){
            $config['total_rows'] = $this->indikator->total_rows();
            $indikator = $this->indikator->get_limit_data($config['per_page'], $start);
        } else {
            $config['total_rows'] = $this->indikator->total_rows_search($q);
            $indikator = $this->indikator->get_limit_data_search($config['per_page'], $start, $q);
        }
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'indikators' => $indikator,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );

        $this->template->load('template/template_backend', 'indikator/list_indikator',$data);
    }

    public function add(){
        $data=array(
            'button' => 'Create',
            'status' => 'add',
            'id' => '0',
            'javascript' => 'assets/js/pmkp/indikator.js',
            'judul' =>'',
            'unitx' => '',
            'units' => $this->indikator->get_all_unit()
        );

        $this->template->load('template/template_backend', 'indikator/add_indikator',$data);
    }

    public function add_action(){
        $result=$this->indikator->insert(
            array(
                'judul'=>$this->input->post('judul'),
                'unit'=>$this->input->post('unit')
            )
        );

       echo $result;
    }

    public function update($id){
        $row=$this->indikator->get_by_id($id);
        $data=array(
            'button' => 'Update',
            'status' => 'edit',
            'javascript' => 'assets/js/pmkp/indikator.js',
            'id' => $row->id,
            'judul' => $row->judul,
            'unitx' => $row->unit,
            'units' => $this->indikator->get_all_unit()
        );
        $this->template->load('template/template_backend', 'indikator/add_indikator',$data);
    }

    public function update_action(){
        $result=$this->indikator->update(
            $this->input->post('id'),
            array(
                'judul'=>$this->input->post('judul'),
                'unit'=>$this->input->post('unit')
            )
        );

       echo "1";
    }



    public function delete($id){
        $this->indikator->delete($id);
        redirect('indikator');
    }


}