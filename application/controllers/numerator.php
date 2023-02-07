<?php



defined('BASEPATH') or exit('No direct script access allowed');

class Numerator extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
       $this->load->model('Numerator_model', 'numerator');
       $this->js='assets/js/pmkp/numerator.js';
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
            'nums' => $numerator
        );

        $this->template->load('template/template_backend', 'numerator/list_numerator',$data);
    }

    public function add(){
        $data=array(
            'button' => 'Create',
            'javascript' => $this->js,
            'status' => 'add',
            'id' => '0',
            'kodeunit' => '',
            'jenis' => '',
            'deskripsi'=>'',
            'nilai'=>'',
            'operator'=>'',
            'mutu'=>'',
            'units'=>$this->numerator->get_all_unit(),
            'kodes'=>$this->numerator->get_all_kode()
        );
        $this->template->load('template/template_backend', 'numerator/add_numerator',$data);
    }

    public function add_action(){
        $result=$this->numerator->insert(
            array(                
                'unit'=>$this->input->post('unit'),
                'jenis'=>$this->input->post('jenis'),
                'indikator'=>$this->input->post('indikator'),
                'deskripsi'=>$this->input->post('deskripsi'),
                'operator'=>$this->input->post('operator'),
                'standar'=>$this->input->post('nilai'),
                'mutu_rs'=>$this->input->post('mutu')
            )
        );
        echo $result;
    }

    public function update($id=null){
        $row=$this->numerator->get_by_id($id);
        $data=array(
            'button' => 'Update',
            'javascript' => $this->js,
            'status' => 'update',
            'id' => $row->idnum,
            'kodeunit' => $row->kodeunit,
            'jenis' => $row->jenis,
            'units' => $this->numerator->get_all_unit(),
            'kdindikator' => $row->kdindikator,
            'indikators' => $this->numerator->get_all_indikator($row->kodeunit),
            'deskripsi' => $row->deskripsi,
            'operator' => $row->operator,
            'nilai' => $row->standar,
            'mutu'=>$row->mutu_rs,
            'kodes'=>$this->numerator->get_all_kode()
        );
       $this->template->load('template/template_backend', 'numerator/add_numerator',$data);
    }

    public function update_action($id=null){
        $result=$this->numerator->update(
            $this->input->post('id'),
            array(                
                'unit'=>$this->input->post('unit'),
                'jenis'=>$this->input->post('jenis'),
                'indikator'=>$this->input->post('indikator'),
                'deskripsi'=>$this->input->post('deskripsi'),
                'operator'=>$this->input->post('operator'),
                'standar'=>$this->input->post('nilai'),
                'mutu_rs'=>$this->input->post('mutu')
            )
        );
        echo "1";
    }

    public function delete($id=null){
        $this->numerator->delete($id);
        redirect('numerator');
    }

    public function cari_indikator_unit(){
        $hasil = $this->numerator->get_all_indikator($this->input->post('unit'));
        echo json_encode($hasil);
    }

}