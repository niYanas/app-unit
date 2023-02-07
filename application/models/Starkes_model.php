<?php


class Starkes_model extends CI_Model{

    public $table_unit  = 'view_temp_bidang';
    public $id_unit     = 'tb_id';
    public $order_unit  = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    public function get_all_unit(){
        $this->db->order_by($this->id_unit, $this->order_unit);
        return $this->db->get($this->table_unit)->result();
    }

    public function get_all_kode(){
        $this->db->order_by('id_kode', $this->order_unit);
        return $this->db->get('kode')->result();
    }

    public function get_all_starkes_unit($unit){
        $this->db->order_by('kdindikator', 'ASC');
        $this->db->where('isdeletednum', '0');
        $this->db->where('kodeunit', $unit);
        return $this->db->get('view_numerator')->result();
    }

    public function get_all_starkes_nilai($kondisi,$waktu){
        $this->db->order_by('indikator', 'ASC');
        $this->db->where('isdelete', '0');
        $this->db->where($kondisi);
        $this->db->where("DATE_FORMAT(tanggal_star,'%Y-%m')",$waktu);
        return $this->db->get('view_starkes')->result();
    }

    public function get_all_substarkes_unit($unit){
        $this->db->order_by('idsubnum', 'DESC');
        $this->db->where('isdeletednum', '0');
        $this->db->where('kodeunit', $unit);
        return $this->db->get('view_subnumerator')->result();
    }

    public function insertBulkData($data) {
        $this->db->insert_batch('starkes', $data);
      }

         // insert data
    function insert($data)
    {
        $this->db->insert('starkes', $data);
    }

    function periksa_starkes($kondisi){
        $this->db->where($kondisi);
        $this->db->where(array('isdelete'=>'0'));
        $this->db->from('starkes');
        return $this->db->count_all_results();
    }

    // delete data
    function delete($kondisi)
    {
        $this->db->where($kondisi);
        $this->db->update('starkes', array('isdelete'=>'1'));
    }
    
}