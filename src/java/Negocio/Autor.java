
package Negocio;

import AccesoDato.Conexion;

public class Autor {
    
    Conexion con;
    int autor_id;
    String nombre;
    String apepat;
    String apemat;
    String fecha_nacimiento;
    String estado;
    int nacionalidad_id;

    public Autor(){
        con=new Conexion();
    }   
    
    public int getAutor_id() {
        return autor_id;
    }

    public void setAutor_id(int autor_id) {
        this.autor_id = autor_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApepat() {
        return apepat;
    }

    public void setApepat(String apepat) {
        this.apepat = apepat;
    }

    public String getApemat() {
        return apemat;
    }

    public void setApemat(String apemat) {
        this.apemat = apemat;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getNacionalidad_id() {
        return nacionalidad_id;
    }

    public void setNacionalidad_id(int nacionalidad_id) {
        this.nacionalidad_id = nacionalidad_id;
    }
    public void save(){
        con.setInsertar("insert into Autores(nombre,apepat,apemat,fecha_nacimiento,estado,nacionalidad_id) values('"+this.getNombre()+"','"+this.getApepat()+"','"+this.getApemat()+"','"+this.getFecha_nacimiento()+"','activo','"+this.getNacionalidad_id()+"')");
    }
    public void delete(){
        con.setInsertar("update Autores set estado='pasivo' where autor_id='"+this.getAutor_id()+"'");
    }
    public void update(){
        con.setInsertar("update Autores set nombre='"+this.getNombre()+"',apepat='"+this.getApepat()+"',apemat='"+this.getApemat()+"',fecha_nacimiento='"+this.getFecha_nacimiento()+"',nacionalidad_id='"+this.getNacionalidad_id()+"' where autor_id='"+this.getAutor_id()+"'");
    }
    
    
}
