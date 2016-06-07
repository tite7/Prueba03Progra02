
package Negocio;

import AccesoDato.Conexion;

public class Album {
        
    Conexion con;
    int album_id;
    String titulo;
    String fecha_creacion;
    String estado;
    int cantidad_canciones;
    int autor_id;
    int creado_por;

    public Album(){
        con=new Conexion();
    }
    
    public int getAlbum_id() {
        return album_id;
    }

    public void setAlbum_id(int album_id) {
        this.album_id = album_id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getCantidad_canciones() {
        return cantidad_canciones;
    }

    public void setCantidad_canciones(int cantidad_canciones) {
        this.cantidad_canciones = cantidad_canciones;
    }

    public int getAutor_id() {
        return autor_id;
    }

    public void setAutor_id(int autor_id) {
        this.autor_id = autor_id;
    }

    public int getCreado_por() {
        return creado_por;
    }

    public void setCreado_por(int creado_por) {
        this.creado_por = creado_por;
    }
    
    
}