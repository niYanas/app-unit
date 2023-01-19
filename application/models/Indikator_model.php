<?php


class Indikator_model extends CI_Model{

    public $table_unit = 'view_temp_bidang';
    public $table = 'master_indikator';


    public $id_unit = 'tb_id';
    public $id='id';

    public $order_unit = 'DESC';
    public $order='DESC';

    function __construct()
    {
        parent::__construct();
    }

    public function get_all_unit(){
        $this->db->order_by($this->id_unit, $this->order_unit);
        return $this->db->get($this->table_unit)->result();
    }

     // get data by id
     function get_by_id($id)
     {
         $this->db->where($this->id, $id);
         return $this->db->get($this->table)->row();
     }

    // get all
    function get_limit_data()
    {
        $this->db->order_by($this->id, $this->order);
        $this->db->join('temp_bidang','temp_bidang.tb_id=master_indikator.unit','inner');
        $this->db->where('isdeleted', '0');
        return $this->db->get($this->table)->result();
    }

     // get total rows
     function total_rows() {
	    $this->db->from($this->table);
        $this->db->join('temp_bidang','temp_bidang.tb_id=master_indikator.unit','inner');
        $this->db->where('isdeleted', '0');
        return $this->db->count_all_results();
    }

    // get total rows
    function total_rows_search($q = NULL)
    {
        $this->db->like($q);
        $this->db->from($this->table);
        $this->db->join('temp_bidang','temp_bidang.tb_id=master_indikator.unit','inner');
        $this->db->where('isdeleted', '0');
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data_search($limit, $start = 0, $q = NULL)
    {
        $this->db->order_by($this->id, $this->order);
        $this->db->like($q);
        $this->db->join('temp_bidang','temp_bidang.tb_id=master_indikator.unit','inner');
        $this->db->limit($limit, $start);
        $this->db->where('isdeleted', '0');
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
        return ($this->db->affected_rows() != 1) ? false : true;
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, array('isdeleted'=>'1'));
    }

     // delete data
     function delete_all_by_hrd($id)
     {
         $this->db->where('tha_hrd', $id);
         $this->db->delete($this->table);
     }
}