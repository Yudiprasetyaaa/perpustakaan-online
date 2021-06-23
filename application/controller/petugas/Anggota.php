<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Anggota extends MY_Controller {
	
	public function __construct()
		{
			parent::__construct();
			//$this->Security_model->login_check();
		}
	public function index(){
		$data['log']=$this->db->get_where('tb_petugas',array('id_petugas' => $this->session->userdata('username')))->result();
		$cek = $this->session->userdata('logged_in');
		$stts = $this->session->userdata('stts');
		/*jika status login Yes dan status admin tampilkan*/
		if(!empty($cek) && $stts=='petugas')
		{
			/*layout*/	
			$data['title']='Daftar Siswa';
			$data['pointer']="Siswa";
			$data['classicon']="fa fa-book";
			$data['main_bread']="Data Siswa";
			$data['sub_bread']="Daftar Siswa";
			$data['desc']="Data Master Siswa, Menampilkan data Siswa Perpustakaan";

			/*data yang ditampilkan*/
			$data['id_siswa'] = $this->Buku_model->getAllData("tb_siswa");
			$data['data_kelas'] = $this->Buku_model->getAllData("tb_kelas");
			$data['data_agama'] = $this->Buku_model->getAllData("tb_agama");
			//$data['isi']=$this->Anggota_model->get_all();
			$tmp['content']=$this->load->view('petugas/anggota/View_anggota',$data, TRUE);
			$this->load->view('petugas/layout',$tmp);
		}
		else
		/*jika status login NO atau status bukan admin kembalikan ke login*/
		{
			header('location:'.base_url().'web/log');
		}
	}
	public function edit()
	{ 
		$data['log']=$this->db->get_where('tb_petugas',array('id_petugas' => $this->session->userdata('username')))->result();
  		$cek = $this->session->userdata('logged_in');
		$stts = $this->session->userdata('stts');
		if(!empty($cek) && $stts=='petugas')
		{		
				$id = $this->input->get('id_siswa',true);	
				$this->form_validation->set_rules('nama', 'nama', 'required');
				$this->form_validation->set_rules('kelas', 'kelas', 'required');
				$this->form_validation->set_rules('agama', 'agama', 'required');
				$this->form_validation->set_rules('jk', 'jk', 'required');
				$this->form_validation->set_rules('hp', 'hp', 'required');
				$this->form_validation->set_rules('alamat', 'alamat', 'required');
				if($this->form_validation->run()==FALSE)
				{
					//$data ['err'] = validation_errors();
					$data['title']='Edit Siswa';
					$data['pointer']="Siswa";
					$data['classicon']="fa fa-book";
					$data['main_bread']="Data Siswa";
					$data['sub_bread']="Edit Siswa";
					$data['desc']="Form untuk melakukan edit data Siswa Perpustakaan";

					/*data yang ditampilkan*/
					$data['id_siswa'] = $this->Buku_model->get_detail1('tb_siswa','id_siswa',$id);
					$data['data_kelas'] = $this->Buku_model->getAllData("tb_kelas");
					$data['data_agama'] = $this->Buku_model->getAllData("tb_agama");
					$tmp['content']=$this->load->view('petugas/anggota/Edit_anggota',$data,true);
					$this->load->view('petugas/layout',$tmp);
				}
		}
		else
		{
			header('location:'.base_url().'web/log');
		}
 	}
 	public function update()
	{ 
		$data['log']=$this->db->get_where('tb_petugas',array('id_petugas' => $this->session->userdata('username')))->result();
  		$cek = $this->session->userdata('logged_in');
		$stts = $this->session->userdata('stts');
		if(!empty($cek) && $stts=='petugas')
		{		
				$id = $this->input->post('id_siswa');	
				$this->form_validation->set_rules('nama', 'nama', 'required');
				$this->form_validation->set_rules('kelas', 'kelas', 'required');
				$this->form_validation->set_rules('agama', 'agama', 'required');
				$this->form_validation->set_rules('jk', 'jk', 'required');
				$this->form_validation->set_rules('hp', 'hp', 'required');
				$this->form_validation->set_rules('alamat', 'alamat', 'required');
				if($this->form_validation->run()==FALSE)
				{
					//$data ['err'] = validation_errors();
					$data['title']='Edit Siswa';
					$data['pointer']="Siswa";
					$data['classicon']="fa fa-book";
					$data['main_bread']="Data Siswa";
					$data['sub_bread']="Edit Siswa";
					$data['desc']="Form untuk melakukan edit data Siswa Perpustakaan";

					/*data yang ditampilkan*/
					$data['id_siswa'] = $this->Buku_model->get_detail1('tb_siswa','id_siswa',$id);
					$data['data_kelas'] = $this->Buku_model->getAllData("tb_kelas");
					$data['data_agama'] = $this->Buku_model->getAllData("tb_agama");
					$tmp['content']=$this->load->view('petugas/anggota/Edit_anggota',$data,true);
					$this->load->view('petugas/layout',$tmp);
				}
			 	else
				{
					$id = $this->input->post('id_siswa');	
					$field='id_siswa';
		            $data = array(
		                          'nama' => $this->input->post('nama'),
		                          'id_kelas' => $this->input->post('kelas'),
		                          'id_agama' => $this->input->post('agama'),
		                          'jenis_kelamin' =>$this->input->post('jk'),
		                          'alamat' => $this->input->post('alamat'),
		                          'hp' => $this->input->post('hp'),
		                          'ket' => $this->input->post('keterangan'),
		                        );
					$quer=$this->Buku_model->updateData1('tb_anggota',$data,$field,$id);
					redirect("petugas/Anggota","refresh");	
				}
		}
		else
		{
			header('location:'.base_url().'web/log');
		}
 	}
 	public function delete()
		{
			$data['log']=$this->db->get_where('tb_petugas',array('id_petugas' => $this->session->userdata('username')))->result();
			$id = $this->input->get('id_siswa',true);
			$field="id_siswa";
  			$query = $this->Buku_model->delete('tb_siswa',$field,$id);					
			if ($query)
				{
					$this->session->set_flashdata("message","berhasil");
					redirect("petugas/Anggota","refresh");
				}
			else
				{
					$this->session->set_flashdata("message","gagal");
					redirect("petugas/Anggota","refresh");
				}
 		}
}