<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Web extends CI_Controller {


	public function _construct()
	{
		session_start();
		parent::__construct();
		$this->load->model('Perpus_model');
	}
	function __construct(){
		parent::__construct();
		$this->load->model('Mregister');
	}
	public function index(){
		$data['title']='Home Perpustakaan';
		$tmp['content']=$this->load->view('global/home',$data, TRUE);
		$this->load->view('global/layout',$tmp);
	}
	public function register()
	{

		$data['title'] = 'Daftar Akun';
		$tmp['content']=$this->load->view('global/home',$data, TRUE);
		$this->load->view('global/register');
	}

	//halaman login
	public function log()
	{
		$cek = $this->session->userdata('logged_in');
		if(empty($cek))
		{

			//buat atribut form
			$frm['username'] = array('name' => 'username',
				'id' => 'username',
				'type' => 'text',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Username'
			);
			$frm['password'] = array('name' => 'password',
				'id' => 'password',
				'type' => 'password',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Password'
			);

			$frm['title']='Login & Register';
			$tmp['content']=$this->load->view('global/login',$frm);
	
		}
		else
		{
			$st = $this->session->userdata('stts');
			echo $s = $this->session->userdata('username');
			if($st=='admin')
			{				
				header('location:'.base_url().'admin/Home');
			}
			else if($st=='petugas')
			{
				header('location:'.base_url().'petugas/Home');
			}
			else if($st=='siswa')
			{
				header('location:'.base_url().'siswa/Home');
			}
		}
	}
	
	//mengambil data login
	public function login()
	{
		$u = $this->input->post('username');
		$p = $this->input->post('password');
		$this->Perpus_model->getLoginData($u,$p);
	}

	//logout
	public function logout()
	{
		$cek = $this->session->userdata('logged_in');
		if(empty($cek))
		{
			
			header('location:'.base_url().'web/log');
		}
		else
		{
			
			$this->session->sess_destroy();
			header('location:'.base_url().'web/log');
			
		}
	}
	public function do_register()
	{
		$id_siswa = $this->input->post('id_siswa');
		$nama = $this->input->post('nama');
		$email = $this->input->post('email');
		$jk = $this->input->post('jk');
		$agama = $this->input->post('agama');
		$telp = $this->input->post('telp');
		$alamat = $this->input->post('alamat');
		$password = $this->input->post('password');
		$kelas = $this->input->post('kelas');
		$data2 = array('username' => $this->input->post('id_siswa'),
													'password'=>$password,
													'stts'=>$this->input->post('stts'));
									$quer1=$this->Buku_model->insertData('tb_login',$data2);
									redirect("web/login","refresh");
		$data = array(
			'id_siswa'  => $id_siswa,
			'nama'      => $nama,
			'email'     => $email,
			'jk'     	=> $jk,
			'agama'     => $agama,
			'telp'      => $telp,
			'alamat'    => $alamat,
			'password'  => md5($password),
			'kelas'     => $kelas
		);

		$insert = $this->Mregister->insertUser($data);
		if ($insert) {
			redirect('web/login');
		} else {
			redirect('web/register');
		}
	}
}

/* End of file web.php */
/* Location: ./application/controllers/web.php */