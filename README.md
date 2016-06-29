# Prueba03Progra02


MariaDB [(none)]> use prueba03
Database changed
MariaDB [prueba03]> create table Usuarios(
    -> usuario_id int(10) primary key not null auto_increment,
    -> usuario varchar(25) not null,
    -> clave varchar(20) not null,
    -> fecha_nacimiento date,
    -> estado varchar(10));
Query OK, 0 rows affected (0.06 sec)

MariaDB [prueba03]> create table albumes(
    -> album_id int(10) primary key not null auto_increment,
    -> titulo varchar(20),
    -> fecha_creacion varchar(15),
    -> cantidad_canciones int (4),
    -> autor_id int(10),
    -> creado_por int(10),
    -> estado varchar(10)
    -> );
Query OK, 0 rows affected (0.28 sec)

MariaDB [prueba03]> create table Autores(
    -> autor_id int(3) primary key not null auto_increment,
    -> nombre varchar(30),
    -> apepat varchar(30),
    -> apemat varchar(30),
    -> fecha_nacimiento varchar(20),
    -> estado varchar (10),
    -> nacionalidad_id int(3)
    -> );


    MariaDB [prueba03]> create table Nacionalidades(
    -> nacionalidad_id int(3)primary key not null auto_increment,
    -> nombre varchar(30),
    -> estado varchar(10)
    -> );
    
    MariaDB [prueba03]> create table sesiones(
    -> sesion_id int(3) primary key not null auto_increment,
    -> sesion varchar (20),
    -> clave varchar (10)
    -> );
Query OK, 0 rows affected (0.41 sec)


</form action="login" method="POST">
   </input type="text" name="user" value="usuario">
   </input type="password" name="password" value="contraseña">
   </input type="submit" value="Enviar">
</form>

MariaDB [prueba03]> create table Paises(
    -> pais_id int(3) primary key not null auto_increment,
    -> nombre varchar(30),
    -> creado_por varchar(30),
    -> estado varchar(10));
Query OK, 0 rows affected (0.53 sec)

MariaDB [prueba03]> create table ciudades(
    -> ciudad_id int(3) primary key not null auto_increment,
    -> nombre varchar(30),
    -> creado_por varchar(30),
    -> estado varchar(10),
    -> pais_id int(3));
Query OK, 0 rows affected (3.62 sec)
