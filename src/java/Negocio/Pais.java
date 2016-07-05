
package Negocio;

import AccesoDato.Conexion;

public class Pais {
    
    Conexion con;
    int pais_id;
    String nombre;
    String creado_por;
    String estado;

    public Pais(){
        con=new Conexion();
    }
    
    public int getPais_id() {
        return pais_id;
    }

    public void setPais_id(int pais_id) {
        this.pais_id = pais_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCreado_por() {
        return creado_por;
    }

    public void setCreado_por(String creado_por) {
        this.creado_por = creado_por;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    public void save(){
        con.setInsertar("insert into Paises(nombre,creado_por,estado) values('"+this.getNombre()+"','"+this.getCreado_por()+"','activo')");
    }
    public void delete(){
        con.setInsertar("update Paises set estado='pasivo' where autor_id='"+this.getPais_id()+"'");
    }
    public void update(){
        con.setInsertar("update Paises set nombre='"+this.getNombre()+"', creado_por='"+this.getCreado_por()+"',"
                + " pais_id='" + this.getPais_id()+"' where autor_id='"+this.getPais_id()+"'");
    }
    
    
}
