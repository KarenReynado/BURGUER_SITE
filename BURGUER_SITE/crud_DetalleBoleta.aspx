<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCRUD.master" AutoEventWireup="true" CodeFile="crud_DetalleBoleta.aspx.cs" Inherits="crud_DetalleBoleta" %>

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
									<h3>Agragar Detalle de Boletas</h3>
									<p>Integer eu ante ornare amet commetus vestibulum blandit integer in curae ac faucibus integer non. Adipiscing cubilia elementum integer. Integer eu ante ornare amet commetus.</p>
									<form method="post" action="#">
                                        <div>
                                                <asp:HiddenField Runat="server" ID="hdnCodBoleta"  />
                                       </div>
										<div class="row gtr-uniform">
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="id" type="text" name="name"  placeholder="ID"  runat="server"></asp:TextBox></div>

											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="idpedido" runat="server" type="text" name="ID PEDIDO"  placeholder="Id Pedido" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="montototal" runat="server" type="text" name="Monto Total"  placeholder="Monto Total" ></asp:TextBox></div>
											<div class="col-6 col-12-xsmall">
                                                <asp:TextBox ID="modopago" runat="server" type="text" name="Modo"  placeholder="id Modo Pago" ></asp:TextBox></div>
											
                                            <div class="col-12">
												<ul class="actions">
													<li>
                                                        <asp:Button ID="Button1"  runat="server" Text="Ingresar Datos" type="submit" class="primary" />
													</li>
													<li><input  type="reset" value="Cancelar" /></li>
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

