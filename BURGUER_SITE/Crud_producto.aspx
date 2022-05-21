<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCRUD.master" AutoEventWireup="true" CodeFile="Crud_producto.aspx.cs" Inherits="Crud_producto" EnableEventValidation="false" %>

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
									<h3>Agragar Producto Nuevo Al menú</h3>
									<p>Favor Agregar productos nuevos al menú del Krusty Krab</p>
									<form method="post" action="#">
										<div class="row gtr-uniform">
                                            <div>
                                                <asp:HiddenField Runat="server" ID="hdnCodProducto"  />
                                            </div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="id" type="number" name="number"  placeholder="ID"  runat="server"></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="nombre" runat="server" type="text" name="nombre"  placeholder="Nombre Producto" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="idtipo" runat="server" type="number" name="idtipo"  placeholder="Id Tipo Producto" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="precio" runat="server" type="number" name="precio"  placeholder="Precio" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="Descripcion" runat="server" type="text" name="descripciom"  placeholder="Descripcion" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="imagen" runat="server" type="text" name="imagen"  placeholder="Enlace Imagen" ></asp:TextBox></div>
											
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

