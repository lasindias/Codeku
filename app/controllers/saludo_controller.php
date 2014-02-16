<?php
class SaludoController extends AppController {
	
	public function hola($nombre = "KumbiaPHP")
	{
		// View::select(NULL);
		$this->fecha = date("Y-m-d H:i");
		$this->nombre = $nombre;
	}
	
	public function adios()
	{
		
	}
}
