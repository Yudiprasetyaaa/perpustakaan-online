<?PHP
	/**
	 * 
	 */
    class Mregister extends CI_Model 
        {
            function __construct()
            {
             parent::__construct();
            } 

            public function insertUser($data){
                $value = $data;
                $table = "tb_siswa";
                $insert = $this->db->insert($table,$value);

                return $insert;
            }

            public function getUser($where){
                $table ="tb_siswa";
                $this->db->where($where);
                $data = $this->db->get($table);

                return $data->result();
            }

            public function getCount($where){
                $table ="tb_siswa";
                $this->db->where($where);
                $jumlah = $this->db->count_all_results($table);

                return $jumlah;
            }
        }
?>