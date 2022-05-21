<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="Registrarse.aspx.cs" Inherits="Registrarse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <br />
    <br />
    <br />

    <div class="container">
	<div class="d-flex justify-content-center h-100">
        
		<div class="card">
			<div class="card-header">
				<h3>Nuevo Usuario</h3>
				<div class="d-flex justify-content-end social_icon">
					
                    
				</div>
			</div>
            <br />
			<div class="card-body">
				<form>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user-circle"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="Nombre Usuario">
						
					</div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-envelope"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="Correo Electronico">
						
					</div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-phone"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="Número de Telefono">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control" placeholder="Contraseña">
					</div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-lock"></i></span>
						</div>
						<input type="password" class="form-control" placeholder="Confirmar Contraseña">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Remember Me
					</div>
					<div class="form-group">
						<a class="btn float-right login_btn" href="Login.aspx">Registrar</a>
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Ya tienes Cuenta?<a href="Login.aspx">Ingresa aquí</a>
				</div>
				
			</div>
		</div>
	</div>
</div>
</asp:Content>

