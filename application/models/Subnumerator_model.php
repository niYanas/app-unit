<?php


class Subnumerator_model extends CI_Model
{

    public $table_unit = 'view_temp_bidang';
    public $id_unit = 'tb_id';
    public $order_unit = 'DESC';

    public $tabelx  = 'master_subnumerator';
    public $id      = 'idsubnum';
    public $order   = 'DESC';

    public function get_all_unit()
    {
        $this->db->order_by($this->id_unit, $this->order_unit);
        return $this->db->get($this->table_unit)->result();
    }

    public function get_all_indikator($unit)
    {
        $this->db->select('id as value,judul as text');
        $this->db->where('unit', $unit);
        $this->db->where('isdeleted', '0');
        return $this->db->get('master_indikator')->result();
    }

    public function get_all_deskripsi($indikator)
    {
        $this->db->select('idnum,deskripsi,jenis');
        $this->db->where('kdindikator', $indikator);
        $this->db->where('isdeletednum', '0');
        return $this->db->get('view_numerator')->result();
    }

     // get all
     function get_limit_data()
     {
         $this->db->order_by($this->id, $this->order);
          $this->db->where('isdeletednum', '0');
         return $this->db->get('view_subnumerator')->result();
     }
 
      // get total rows
      function total_rows() {
         $this->db->from('view_subnumerator');
         $this->db->where('isdeletednum', '0');
         return $this->db->count_all_results();
     }
 
     // get total rows
     function total_rows_search($q = NULL)
     {
         $this->db->like($q);
         $this->db->from('view_subnumerator');
         $this->db->where('isdeletednum', '0');
         return $this->db->count_all_results();
     }
 
     // get data with limit and search
     function get_limit_data_search($limit, $start = 0, $q = NULL)
     {
         $this->db->order_by($this->id, $this->order);
         $this->db->like($q);
          $this->db->limit($limit, $start);
         $this->db->where('isdeletednum', '0');
         return $this->db->get('view_numerator')->result();
     }

    // insert data
    public function insert($data)
    {
        $this->db->insert($this->tabelx, $data);
        return ($this->db->affected_rows() != 1) ? false : true;
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->tabelx, $data);
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get('view_subnumerator')->row();
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->tabelx, array('isdeletednum' => '1'));
    }
}
