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
                //enrutando por defecto al index del controller
                return Router::redirect();
			}else{
				Flash::error('Falló Operación');
			}
		}
	}
	
	public function editar($id)
	{
		$proveedor = new Proveedores();
        //se verifica si se ha enviado el formulario (submit)
        if(Input::hasPost('proveedor')){
 
            if($proveedor->update(Input::post('proveedor'))){
                 Flash::valid('Operación exitosa');
                //enrutando por defecto al index del controller
                return Router::redirect();
            } else {
                Flash::error('Falló Operación');
            }
        } else {
            //Aplicando la autocarga de objeto, para comenzar la edición
            $this->proveedor = $proveedor->find_by_id((int)$id);
        }
	}

	public function borrar($id)
	{
        $proveedor = new Proveedores();
        if ($proveedor->delete((int)$id)) {
                Flash::valid('Operación exitosa');
        }else{
                Flash::error('Falló Operación'); 
        } 
        //enrutando por defecto al index del controller
        return Router::redirect();
	}
}
