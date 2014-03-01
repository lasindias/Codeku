<?php
/**
 * Carga del modelo Proveedores...
 */
Load::models('proveedores');
 
class ProveedoresController extends AppController {
	 
	 /**
     * Obtiene una lista para paginar los proveedores
     */
    public function index($page=1)
    {
        $proveedor = new Proveedores();
        $this->listProveedores = $proveedor->getProveedores($page);
    }
    
    /**
     * Crea un Registro
     */

	public function crear()
    {
        /**
         * Se verifica si el usuario envio el form (submit) y si ademas 
         * dentro del array POST existe uno llamado "menus"
         * el cual aplica la autocarga de objeto para guardar los 
         * datos enviado por POST utilizando autocarga de objeto
         */
        if(Input::hasPost('proveedor')){
            /**
             * se le pasa al modelo por constructor los datos del form y ActiveRecord recoge esos datos
             * y los asocia al campo correspondiente siempre y cuando se utilice la convención
             * model.campo
             */
            $proveedor = new Proveedores(Input::post('proveedor'));
            //En caso que falle la operación de guardar
            if($proveedor->create()){
                Flash::valid('Operación exitosa');
                //Eliminamos el POST, si no queremos que se vean en el form
                Input::delete();
                return;               
            }else{
                Flash::error('Falló Operación');
            }
        }
	}
}
