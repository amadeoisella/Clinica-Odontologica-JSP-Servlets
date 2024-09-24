<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %>
<%@include file="components/bodyfirst.jsp" %>

<h1>Editar Usuarios</h1>
<p>Apartado para modificar un usuario del sistema</p>

<% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>

<!-- Form -->
<form class="user" action="SvEditUsuarios" method="POST">
    <div class="form-group col">
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="nombreusua" name="nombreusua"
                   placeholder="Nombre Usuario" value="<%=usu.getNombreUsuario()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                   placeholder="Contraseña" value="<%=usu.getContrasenia()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="rol" name="rol"
                   placeholder="Rol" value="<%=usu.getRol()%>">
        </div>
    </div>

    <button class="btn btn-primary btn-user btn-block" type="submit">
        Guardar Modificacion
    </button>
</form>

<%@include file="components/bodysecond.jsp" %>