<?php

use LDAP\Result;

defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('Data_model', 'model');
    }

    public function index()
    {
  
        $this->template->load('template/template_backend', 'daftarindikator');
    }

    public function tambahIndikator()
    {

        $this->model->tambahIndikator();
    }

    public function tambahNilai()
    {

        $this->model->tambahNilai();
    }

    public function viewNilai()
    {

        $this->load->view('view_nilai', $data);
    }

    public function load_judul()
    {
        $judul = $_GET['judul'];
        $data = $this->db->get_where('indikator_unit', ['id' => $judul])->result();

        $no = 1;
        foreach ($data as $row) : ?>
            <tr>
                <td><?= $no++; ?></td>
                <td><?= $row->judul ?></td>
                <td>Input Nilai</td>
                <td><?= $row->numerator ?></td>
                <td>Input Nilai</td>
                <td><?= $row->denumerator ?></td>
                <td>Input Nilai</td>
                <td class="text-center">
                    <a class="btn btn-simple btn-info btn-icon like"><i class="material-icons">add</i></a>
                </td>
            </tr>
            <?php 
        endforeach 
        ?><?php
                            }

                            public function load_data()
                            {
                                $judul = $_GET['judul'];
                                $data = $this->db->get_where('indikator_unit', ['id' => $judul])->result();

                                $no = 1;
                                foreach ($data as $row) : ?>
            <tr>
                <td><?= $no++; ?></td>
                <!-- <td><?= $row->nama_unit ?></td> -->
                <td><?= $row->judul ?></td>
                <td>Tanggal</td>
                <td class="text-center">
                    <a data-toggle="modal" data-target="" class="btn btn-simple btn-info btn-icon like"><i class="material-icons">add</i></a>
                    <a data-toggle="modal" data-target="#viewModal" class="btn btn-simple btn-warning btn-icon edit"><i class="material-icons">visibility</i></a>
                    <a href="#" class="btn btn-simple btn-danger btn-icon remove"><i class="material-icons">delete_forever</i></a>
                </td>
            </tr>
            <?php endforeach ?><?php
                            }
                        }
