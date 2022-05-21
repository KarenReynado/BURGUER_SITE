using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        LinkButton btnEliminar = (LinkButton)sender;
        int id = Convert.ToInt32(btnEliminar.CommandArgument);
        BLL_PRODUCTO.borrarProducto(id);
        GridView5.DataBind();
    }

    protected void btnEliminar2_Click(object sender, EventArgs e)
    {
        LinkButton btnEliminar = (LinkButton)sender;
        int id = Convert.ToInt32(btnEliminar.CommandArgument);
        BLL_TIPOPRODUCTO.borrarTipoProducto(id);
        GridView5.DataBind();
    }
    protected void btnEliminar3_Click(object sender, EventArgs e)
    {
        LinkButton btnEliminar = (LinkButton)sender;
        int id = Convert.ToInt32(btnEliminar.CommandArgument);
        BLL_EMPLEADO.borrarEmpleado(id);
        GridView6.DataBind();
    }
    protected void btnEliminar4_Click(object sender, EventArgs e)
    {
        LinkButton btnEliminar = (LinkButton)sender;
        int id = Convert.ToInt32(btnEliminar.CommandArgument);
        BLL_MODOPAGO.borrar(id);
        GridView3.DataBind();
    }


    protected void btn_nuevo_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Crud_producto.aspx");
    }
    protected void btn_nuevo2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Crud_Usuarios.aspx");
    } 

}