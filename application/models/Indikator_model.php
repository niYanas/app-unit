<?php


class Indikator_model extends CI_Model{

    public $table_unit = 'view_temp_bidang';
    public $id_unit = 'tb_id';
    public $order_unit = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    public function get_all_unit(){
        $this->db->order_by($this->id_unit, $this->order_unit);
        return $this->db->get($this->table_unit)->result();
    }
}