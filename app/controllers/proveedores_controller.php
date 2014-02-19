<?php
/**
 * Carga del modelo Proveedores...
 */
Load::models('proveedores');
 
class ProveedoresController extends AppController {
	 
	 /**
     * Obtiene una lista para paginar los menus
     */
    public function index($page=1)
    {
        $proveedor = new Proveedores();
        $this->listProveedores = $proveedor->getProveedores($page);
    }
}
