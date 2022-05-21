<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">	
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container">
	<div class="d-flex justify-content-center h-100">
        
		<div class="card">
			<div class="card-header">
				<h3>Inicia Sesión</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
                    <span><i class="fab fa-instagram"></i></span>
                    
				</div>
			</div>
            <br />
			<div class="card-body">
				<form>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						
                        <asp:TextBox ID="txtuser" class="form-control" type="text" placeholder="Nombre Usuario" runat="server"></asp:TextBox>
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						
                        <asp:TextBox ID="txtpwd" type="password" class="form-control" placeholder="Contraseña" runat="server"></asp:TextBox>
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Remember Me
					</div>
					<div class="form-group">
                        <asp:Button ID="Button1" runat="server" class="btn float-right login_btn" Text="Ingresar" OnClick="Button1_Click" />
						</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					No tienes Cuenta?<a href="Registrarse.aspx">Crea una cuenta aquí</a>
				</div>
                
				
			</div>
		</div>
	</div>
</div>
</asp:Content>

