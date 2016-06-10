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


</form action="login" method="POST">
   </input type="text" name="user" value="usuario">
   </input type="password" name="password" value="contraseña">
   </input type="submit" value="Enviar">
</form>



EN EL SERVLET

public class login extends HttpServlet {
   ... 
   //metodo encargado de la gestión del método POST
    protected void processRequestPOST(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        HttpSession sesion = request.getSession();
        String usu, pass;
        usu = request.getParameter("user");
        pass = request.getParameter("password");
        //deberíamos buscar el usuario en la base de datos, pero dado que se escapa de este tema, ponemos un ejemplo en el mismo código
        if(usu.equals("admin") && pass.equals("admin") && sesion.getAttribute("usuario") == null){
            //si coincide usuario y password y además no hay sesión iniciada
            sesion.setAttribute("usuario", usu);
            //redirijo a página con información de login exitoso
            response.sendRedirect("loginExito.jsp");
        }else{
            //lógica para login inválido
        }
    }
 
   //método encargado de la gestión del método GET
    protected void processRequestGET(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        //me llega la url "proyecto/login/out"
        String action=(request.getPathInfo()!=null?request.getPathInfo():"");
        HttpSession sesion = request.getSession();
        if(action.equals("/out")){
            sesion.invalidate();
            response.sendRedirect("/home.jsp");
        }else{
 
        }
    }
 ...
}

MENSAJE DE LOGUEADO CON EL USUARIO

</p>Bienvenido ${sessionScope.usuario}</p>

<<<<<<<<<<<OTRO>>>>>>>>>

** SESIONES EN JSP **

Para un sistema web el manejar una sesión es una parte básica, java nos ofrece una forma muy sencilla de manejarse, aquí trataré de mostrarle un pequeño ejemplo de como crearla y recuperarla.

Primero una pequeña interfaz, donde solo tendremos dos edit, uno para correo y otro para nombre, la idea es que el correo sea el dato que mantenga la sesión y este se pase entre páginas.

datoscorreo.jsp
<form name=”registro” method=”POST” >
<p>Correo</p><input type=”text” name=”correo” /><br />
<p>Contraseña</p><input type=”password” name=”contrasenia” /><br />
<p><button type=”submit”>Actualizar</button></p>
</form>

Ahora del input “correo” saldrá la sesión, el código en java colócalo antes de comenzar el <form> y lo que se tiene que escribir es:

<% HttpSession sesion = request.getSession(true);
String micorreo= request.getParameter(“correo”);
sesion.setAttribute(“mail”,micorreo);
%>

HttpSession sesion = request.getSession(true); habilita la sesión,

String micorreo= request.getParameter(“correo”); se guarda el dato “correo” en un string, el request recupera el dato de la interfaz, correo es como se llama el input.

sesion.setAttribute(“mail”,micorreo); sesion es el objeto de httpSession antes creado, se llama a setAtribute el cual te pide que a un string que ahí esta como “mail” y se le asigna lo que tenga “micorreo” que es lo que se recupero de la interfaz.

Y con eso ya se a creado una sesión

Recuperar la sesión.

recuperar.jsp
<%String id=(String)session.getAttribute(“mail”);
out.println(id);%>
<%if (id==null){%>
<jsp:forward page=”../error.jsp” ></jsp:forward>
<% }else { %>

el html

<%}%>

String id=(String)session.getAttribute(“mail”); con esto recuperamos la sesión en otra hoja, “mail” fue el string antes definido en setAttribute.

out.println(id); si no crees, imprimelo.

if (id==null) validamos la sesión, este el objetivo, validar que si la persona ingreso al sistema y simplemente preguntar si es nulo lo mande a una hoja de error, hoja que se tuvo que crear previamente.
