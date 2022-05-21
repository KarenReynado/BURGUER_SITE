<%@ Page Title="" Language="C#"  AutoEventWireup="true" MasterPageFile="~/MasterPageUserAdmin.master"  CodeFile="Admin_Log.aspx.cs" Inherits="Admin_Log" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one">
								<div class="image main" data-position="center">
									<img src="images/banner.jpg" alt="" />
								</div>
								<div class="container">
									<header class="major">
										<h2>Bienvenido</h2>
										<p>Esta plataforma esta creada para agilizar los procesos de <a>Krusty Krab</a><br />
										 
									</header>
									<p>Krusty Krab es una Hamburguesería comprometida con la calidad y satisfacción de nuestros clientes es por ello que 
                                        buscamos la facilidad en los procesos de administración y logistica en nuestro sistema.
                                        Este sistema soló es para personas con los permisos necesarios para editar, si no cuentas con permisos, puedes escribir a la gerencia, para que puedan ayudarte lo más pronto posible.
									</p>
								</div>
							</section>

						<!-- Two -->
							<section id="two">
								<div class="container">
									<h3>Things I Can Do</h3>
									<p>Enlistamos las cosas que puedes relizar desde la plataforma vitual.</p>
									<ul class="feature-icons">
										
										<li class="icon solid fa-cubes">Hacer cambios </li>
										<li class="icon solid fa-book">Almacenar Nueva Información</li>
										<li class="icon solid fa-coffee">Agregar Productos</li>
										<li class="icon solid fa-bolt">Agilizar el proceso</li>
										<li class="icon solid fa-users">Agregar Usuarios en Linea</li>
									</ul>
								</div>
							</section>

						<!-- Three -->
							<section id="three">
								<div class="container">
									<h3>Agregar Nuevos Productos y Combos</h3>
									<p>Asegurate de escribir la información necesaria en cada campo para evitar comflictos con nuestra base de datos</p>
                                    <asp:Button ID="btn_nuevo" class="btn btn-success" runat="server" Text="Nuevo" OnClick="btn_nuevo_Click"  />
    
                                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSourcepRODUCTINES">
                                        <Columns>
                                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                            <asp:BoundField DataField="IdTipoProducto" HeaderText="IdTipoProducto" SortExpression="IdTipoProducto" />
                                            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnEliminar" CommandArgument='<%# Eval("ID") %>' OnClick="btnEliminar_Click" runat="server" Text="Eliminar"></asp:LinkButton>
           
                                                    </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
								  
									
								    <asp:ObjectDataSource ID="ObjectDataSourcepRODUCTINES" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataPRODUCTO" TypeName="PRODUCTODTSTableAdapters.ProductoTableAdapter" UpdateMethod="Update">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Original_ID" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Nombre" Type="String" />
                                            <asp:Parameter Name="IdTipoProducto" Type="Int32" />
                                            <asp:Parameter Name="Precio" Type="Decimal" />
                                            <asp:Parameter Name="Descripcion" Type="String" />
                                            <asp:Parameter Name="imagen" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Nombre" Type="String" />
                                            <asp:Parameter Name="IdTipoProducto" Type="Int32" />
                                            <asp:Parameter Name="Precio" Type="Decimal" />
                                            <asp:Parameter Name="Descripcion" Type="String" />
                                            <asp:Parameter Name="imagen" Type="String" />
                                            <asp:Parameter Name="Original_ID" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:ObjectDataSource>
								  
									
								</div>
							</section>

						<!-- Four -->
							<section id="four">
								<div class="container">
									<h3>Productos Y Tipos</h3>
									<p>Integer eu ante ornare amet commetus vestibulum blandit integer in curae ac faucibus integer non. Adipiscing cubilia elementum integer. Integer eu ante ornare amet commetus.</p>
                                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSourcetipop">
                                        <Columns>
                                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                            <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnEliminar" CommandArgument='<%# Eval("ID") %>' OnClick="btnEliminar2_Click" runat="server" Text="Eliminar"></asp:LinkButton>
                                                        </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
								    <asp:ObjectDataSource ID="ObjectDataSourcetipop" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataTIPOPRODUCTO" TypeName="TIPOPRODUCTODTSTableAdapters.TipoProductoTableAdapter" UpdateMethod="Update">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Original_ID" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Descripcion" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Descripcion" Type="String" />
                                            <asp:Parameter Name="Original_ID" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:ObjectDataSource>
								</div>
							</section>
                        </div>
                <section id="five">
								<div class="container">
									<h3>Editar personal en Linea</h3>
									<p>Administrar permisos de Usuarios, Insertar nuevos usuarios solo es permitido por el administrador encargado de planta.</p>
									<ul class="feature-icons">
										<li class="icon solid fa-users">Personas dentro del Sistema</li>
									</ul>
                                    <asp:Button ID="btn_nuevo2" class="btn btn-success" runat="server" Text="Nuevo" OnClick="btn_nuevo2_Click"  />
    
                                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSourceUsers">
                                        <Columns>
                                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                            <asp:BoundField DataField="IdTipoEmpleado" HeaderText="IdTipoEmpleado" SortExpression="IdTipoEmpleado" />
                                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                            <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                                            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                            <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                                            <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="btnEliminar3" CommandArgument='<%# Eval("ID") %>' OnClick="btnEliminar3_Click" runat="server" Text="Eliminar"></asp:LinkButton>
                                                            </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:ObjectDataSource ID="ObjectDataSourceUsers" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="MostrarEmpleados" TypeName="EMPLEADODTSTableAdapters.EmpleadoTableAdapter" UpdateMethod="Update">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Original_ID" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="UsuarioEmp" Type="String" />
                                            <asp:Parameter Name="Contraseña" Type="String" />
                                            <asp:Parameter Name="IdTipoEmpleado" Type="Int32" />
                                            <asp:Parameter Name="Nombre" Type="String" />
                                            <asp:Parameter Name="Celular" Type="String" />
                                            <asp:Parameter Name="Correo" Type="String" />
                                            <asp:Parameter Name="Direccion" Type="String" />
                                            <asp:Parameter Name="Sueldo" Type="Decimal" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="UsuarioEmp" Type="String" />
                                            <asp:Parameter Name="Contraseña" Type="String" />
                                            <asp:Parameter Name="IdTipoEmpleado" Type="Int32" />
                                            <asp:Parameter Name="Nombre" Type="String" />
                                            <asp:Parameter Name="Celular" Type="String" />
                                            <asp:Parameter Name="Correo" Type="String" />
                                            <asp:Parameter Name="Direccion" Type="String" />
                                            <asp:Parameter Name="Sueldo" Type="Decimal" />
                                            <asp:Parameter Name="Original_ID" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:ObjectDataSource>
                                    <h3>Tipo Empleados 
                                    </h3>
                                    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSourceTipoEmpleado">
                                        <Columns>
                                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                            <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:ObjectDataSource ID="ObjectDataSourceTipoEmpleado" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataTIPOEMPLEADO" TypeName="TIPOEMPLEADODTSTableAdapters.TipoEmpleadoTableAdapter" UpdateMethod="Update">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Original_ID" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Descripcion" Type="String" />
                                            <asp:Parameter Name="Sueldo" Type="Decimal" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Descripcion" Type="String" />
                                            <asp:Parameter Name="Sueldo" Type="Decimal" />
                                            <asp:Parameter Name="Original_ID" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:ObjectDataSource>
                                   </div>
							</section>
                <!-- six -->
							<section id="six">
								<div class="container">
									<h3>Orders and Information</h3>
									<p>Recopilación de la información de los pedidos realizados, desde los tipos de pago hasta los productos.</p>
									<div class="features">
                                        <h3>Detalle Boletas</h3>
                                     
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSourceDboletines">
                                            <Columns>
                                                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                                <asp:BoundField DataField="IdPedido" HeaderText="IdPedido" SortExpression="IdPedido" />
                                                <asp:BoundField DataField="MontoTotal" HeaderText="MontoTotal" SortExpression="MontoTotal" />
                                                <asp:BoundField DataField="IdModoDePago" HeaderText="IdModoDePago" SortExpression="IdModoDePago" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:ObjectDataSource ID="ObjectDataSourceDboletines" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataDetalleBoleta" TypeName="DETALLEBOLETADTSTableAdapters.DetalleBoletaTableAdapter" UpdateMethod="Update">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Original_ID" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="IdPedido" Type="Int32" />
                                                <asp:Parameter Name="MontoTotal" Type="Decimal" />
                                                <asp:Parameter Name="IdModoDePago" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="IdPedido" Type="Int32" />
                                                <asp:Parameter Name="MontoTotal" Type="Decimal" />
                                                <asp:Parameter Name="IdModoDePago" Type="Int32" />
                                                <asp:Parameter Name="Original_ID" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:ObjectDataSource>
                                        <h3>Detalle pedidos</h3>
                                        <asp:GridView ID="GridView2"  runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSourcePedidos">
                                            <Columns>
                                                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                                <asp:CheckBoxField DataField="Atendido" HeaderText="Atendido" SortExpression="Atendido" />
                                                <asp:BoundField DataField="Detalle" HeaderText="Detalle" SortExpression="Detalle" />
                                                <asp:BoundField DataField="ID_Usuario" HeaderText="ID_Usuario" SortExpression="ID_Usuario" />
                                            </Columns>
                                        </asp:GridView>

                                        
										<asp:ObjectDataSource ID="ObjectDataSourcePedidos" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataPEDIDO" TypeName="PEDIDODTSTableAdapters.PedidoTableAdapter" UpdateMethod="Update">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Original_ID" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Atendido" Type="Boolean" />
                                                <asp:Parameter Name="Detalle" Type="String" />
                                                <asp:Parameter Name="ID_Usuario" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Atendido" Type="Boolean" />
                                                <asp:Parameter Name="Detalle" Type="String" />
                                                <asp:Parameter Name="ID_Usuario" Type="Int32" />
                                                <asp:Parameter Name="Original_ID" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:ObjectDataSource>
                                        <h3>Modo de Pago</h3>
                                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSourceModoPago">
                                            <Columns>
                                                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                                <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="btnEliminar4" CommandArgument='<%# Eval("ID") %>' OnClick="btnEliminar4_Click" runat="server" Text="Eliminar"></asp:LinkButton>
                                                                </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>

                                        
										<asp:ObjectDataSource ID="ObjectDataSourceModoPago" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataMODOPAGO" TypeName="MODOPAGODTSTableAdapters.ModoDePagoTableAdapter" UpdateMethod="Update">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Original_ID" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="Original_ID" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:ObjectDataSource>

                                        
										
										
								
										
									</div>
								</div>
							</section>
                		<!-- Seven -->
							<section id="seven">
								<div class="container">
									<h3>Contact Administración</h3>
									<p> Ante problemas o dudas puedes contactarte con un administrador de la pagina la respuesta, tardará segun sea la complicación que se presente.</p>
									<form method="post" action="#">
										<div class="row gtr-uniform">
											<div class="col-6 col-12-xsmall"><input type="text" name="name" id="name" placeholder="Name" /></div>
											<div class="col-6 col-12-xsmall"><input type="email" name="email" id="email" placeholder="Email" /></div>
											<div class="col-12"><input type="text" name="subject" id="subject" placeholder="Subject" /></div>
											<div class="col-12"><textarea name="message" id="message" placeholder="Message" rows="6"></textarea></div>
											<div class="col-12">
												<ul class="actions">
													<li><input type="submit" class="primary" value="Send Message" /></li>
													</ul>
											</div>
										</div>
									</form>
								</div>
							</section>
                        </div>

				<!-- Footer -->
					<section id="footer">
						<div class="container">
							<ul class="copyright">
								<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</section>

			</div>
</asp:Content>

