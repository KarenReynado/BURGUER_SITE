<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCRUD.master" AutoEventWireup="true" CodeFile="Crud_Usuarios.aspx.cs" Inherits="Crud_Usuarios" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
    <div>
    <section>
        <br />
        <br />
								<div class="container">
									<h3>Agregar Nuevo Usuario</h3>
									<p>Favor Agregar usuarios a la plataforma en linea</p>
									<form method="post" action="#">
										<div class="row gtr-uniform">
                                            <div>
                                                <asp:HiddenField Runat="server" ID="hdnCodProducto"  />
                                            </div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="id" type="number" name="number"  placeholder="ID"  runat="server"></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="usuarioemp" runat="server" type="text" name="usuarioemp"  placeholder="User" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="contraseña" runat="server" type="text" name="contraseña"  placeholder="Contraseña" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="idtipoemplead" runat="server" type="number" name="tipo"  placeholder="Id Tipo Empleado" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="nombre" runat="server" type="text" name="nombre"  placeholder="Nombre Completo" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="celular" runat="server" type="text" name="celular"  placeholder="Celular" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="correo" runat="server" type="text" name="correo"  placeholder="Correo" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="direccion" runat="server" type="text" name="direccion"  placeholder="Dirección" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="sueldo" runat="server" type="decimal" name="sueldo"  placeholder="Sueldo" ></asp:TextBox></div>
											
                                            <div class="col-12">
												<ul class="actions">
													<li>
                                                        <asp:Button ID="Button1"  runat="server" Text="Ingresar Datos" type="submit" class="primary" OnClick="Button1_Click" />
													</li>
													
												</ul>
											</div>
										</div>
									</form>
								</div>
							</section>
          </div>
                        </div>
                </div>
</asp:Content>

