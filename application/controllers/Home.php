<?php

use LDAP\Result;

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
		$this->load->view('view_nilai', $data);
	}

	public function load_judul(){
		$judul = $_GET['judul'];
		$data = $this->db->get_where('indikator_unit', ['id' => $judul])->result();

		$no = 1; 
		foreach($data as $row): ?>
<tr>
    <td><?= $no++; ?></td>
    <!-- <td><?= $row->nama_unit ?></td> -->
    <td><?= $row->judul ?></td>
    <td><?= $row->numerator ?></td>
    <td><?= $row->denumerator ?></td>
    <td class="text-right">
        <a data-toggle="modal" data-target="" class="btn btn-simple btn-info btn-icon like"><i
                class="material-icons">add</i></a>
        <a data-toggle="modal" data-target="#viewModal" class="btn btn-simple btn-warning btn-icon edit"><i
                class="material-icons">visibility</i></a>
        <a href="#" class="btn btn-simple btn-danger btn-icon remove"><i class="material-icons">delete_forever</i></a>
    </td>
</tr>
<?php endforeach ?><?php

}
}