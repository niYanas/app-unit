<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
		$this->load->database();
		$this->load->model('Data_model', 'model');
		$data['data'] = $this->Data_model->get_data();
		$this->load->view('unit', $data);
	}

	public function tambahIndikator()
    {
    	$this->load->model('Data_model', 'model');
		$this->model->tambahIndikator();
    }

	public function tambahNilai()
    {
    	$this->load->model('Data_model', 'model');
		$this->model->tambahNilai();
    }

	public function viewNilai(){
		$data['data'] = $this->Data_model->get_data();
		$this->load->view('viewNilai', $data);
	}
}