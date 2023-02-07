<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Subnumerator extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Subnumerator_model', 'subnumerator');
        $this->js='assets/js/pmkp/subnumerator.js';
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
            $config['total_rows'] = $this->subnumerator->total_rows();
            $subnumerator = $this->subnumerator->get_limit_data($config['per_page'], $start);
        } else {
            $config['total_rows'] = $this->subnumerator->total_rows_search($q);
            $subnumerator = $this->subnumerator->get_limit_data_search($config['per_page'], $start, $q);
        }
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'numerators' => $subnumerator,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
            'nums' => $subnumerator
        );

        $this->template->load('template/template_backend', 'subnumerator/list_subnumerator',$data);
    }

    public function add(){
        $data=array(
            'button' => 'Create',
            'javascript' => $this->js,
            'status' => 'add',
            'id' => '0',
            'kodeunit' => '',
            'units' => $this->subnumerator->get_all_unit(),
            'kdindikator' => '',
            'kddeskripsi' => '',
            'subdeskripsi'=>'',
            'operator'=>'',
            'standar'=>'',
        );
        $this->template->load('template/template_backend', 'subnumerator/add_subnumerator',$data);
    }

    public function add_action(){
        $result=$this->subnumerator->insert(
            array(                
                'unit'=>$this->input->post('unit'),
                'indikator'=>$this->input->post('indikator'),
                'deskripsi'=>$this->input->post('deskripsi'),
                'subdeskripsi'=>$this->input->post('subdeskripsi'),
                'operator'=>$this->input->post('operator'),
                'standar'=>$this->input->post('nilai')
            )
        );
        echo $result;
    }

    public function update($id=null){
        $row=$this->subnumerator->get_by_id($id);
        $data=array(
            'button'        => 'Update',
            'javascript'    => $this->js,
            'status'        => 'update',
            'id'            => $row->idsubnum,
            'kodeunit'      => $row->kodeunit,
            'units'         => $this->subnumerator->get_all_unit(),
            'kdindikator'   => $row->kdindikator,
            'indikators'    => $this->subnumerator->get_all_indikator($row->kodeunit),
            'kddeskripsi'   => $row->kddeskripsi,
            'deksripsis'    => $this->subnumerator->get_all_deskripsi($row->kdindikator),
            'subdeskripsi'  => $row->subdeskripsi,
            'operator'      => $row->operator,
            'standar'       => $row->standar,
        );
        $this->template->load('template/template_backend', 'subnumerator/add_subnumerator',$data);
    }

    public function update_action(){
        $result=$this->subnumerator->update(
            $this->input->post('id'),
            array(                
                'unit'=>$this->input->post('unit'),
                'indikator'=>$this->input->post('indikator'),
                'deskripsi'=>$this->input->post('deskripsi'),
                'subdeskripsi'=>$this->input->post('subdeskripsi'),
                'operator'=>$this->input->post('operator'),
                'standar'=>$this->input->post('nilai')
            )
        );
        echo "1";
    }

    public function delete($id=null){
        $this->subnumerator->delete($id);
        redirect('subnumerator');
    }
    

    public function cari_indikator_unit(){
        $hasil = $this->subnumerator->get_all_indikator($this->input->post('unit'));
        echo json_encode($hasil);
    }

    public function cari_deskripsi(){
        $hasil = $this->subnumerator->get_all_deskripsi($this->input->post('indikator'));
        echo json_encode($hasil);
    }



}