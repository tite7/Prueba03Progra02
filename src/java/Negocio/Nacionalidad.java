
package Negocio;

import AccesoDato.Conexion;

public class Nacionalidad {
    
    Conexion con;
    int nacionalidad_id;
    String nombre;
    String estado;

    public Nacionalidad(){
        con=new Conexion();
    }
    
    public int getNacionalidad_id() {
        return nacionalidad_id;
    }

    public void setNacionalidad_id(int nacionalidad_id) {
        this.nacionalidad_id = nacionalidad_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
}
