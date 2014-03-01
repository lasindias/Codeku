<?php
 
class Proveedores extends ActiveRecord {
    
    /**
     * Retorna los proveedores para ser paginados
     *
     */
    public function getProveedores($page, $ppage=10)
    {
        return $this->paginate("page: $page", "per_page: $ppage", 'order: id desc');
    }
}
