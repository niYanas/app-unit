<?php


class Numerator_model extends CI_Model{

    public $table_unit = 'view_temp_bidang';
    public $table = 'master_numerator';


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

    public function get_all_indikator($unit){
        $this->db->select('id,judul');
        $this->db->where('unit', $unit);
        $this->db->where('isdeleted', '0');
        return $this->db->get('master_indikator')->result();
    }

     // get all
     function get_limit_data()
     {
         $this->db->order_by($this->id, $this->order);
         $this->db->join('temp_bidang','temp_bidang.tb_id=master_numerator.unit','inner');
         $this->db->join('master_indikator','master_indikator.id=master_numerator.indikator','inner');
         $this->db->where('isdeleted', '0');
         return $this->db->get($this->table)->result();
     }
 
      // get total rows
      function total_rows() {
         $this->db->from($this->table);
         $this->db->join('master_indikator','master_indikator.id=master_numerator.indikator','inner');
         $this->db->where('isdeleted', '0');
         return $this->db->count_all_results();
     }
 
     // get total rows
     function total_rows_search($q = NULL)
     {
         $this->db->like($q);
         $this->db->from($this->table);
         $this->db->join('master_indikator','master_indikator.id=master_numerator.indikator','inner');
         $this->db->where('isdeleted', '0');
         return $this->db->count_all_results();
     }
 
     // get data with limit and search
     function get_limit_data_search($limit, $start = 0, $q = NULL)
     {
         $this->db->order_by($this->id, $this->order);
         $this->db->like($q);
         $this->db->join('master_indikator','master_indikator.id=master_numerator.indikator','inner');
         $this->db->limit($limit, $start);
         $this->db->where('isdeleted', '0');
         return $this->db->get($this->table)->result();
     }



}