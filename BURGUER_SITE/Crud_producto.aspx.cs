using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Crud_producto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string codUserURL = Request.QueryString["id"];

            if (codUserURL != null)
            {
                DTO_PRODUCTO objuser = BLL_PRODUCTO.MostrarTodosID(Convert.ToInt32(codUserURL));
                if (objuser != null)
                {
                    id.Text = objuser.ID.ToString();
                    nombre.Text = objuser.NOMBRE;
                    idtipo.Text = objuser.TIPO_PRODUCTO.ToString();
                    precio.Text = objuser.Precio.ToString();
                    Descripcion.Text = objuser.Descripcion;
                    imagen.Text = objuser.imagen;


                }
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int ID= Convert.ToInt32(id.Text);
        string NOMBREPRODUCTO = nombre.Text;
        int TIPOPRODUCTO = Convert.ToInt32( idtipo.Text);
        decimal PRECIO = Convert.ToDecimal(precio.Text);
        string DESCRIPCION = Descripcion.Text;
        string IMAGEN = imagen.Text;

        try
        {

            if (string.IsNullOrEmpty(hdnCodProducto.Value))
            {
                BLL_PRODUCTO.InsertProducto(NOMBREPRODUCTO,TIPOPRODUCTO,PRECIO,DESCRIPCION,IMAGEN);
            }
            else
            {
                int codUser = Convert.ToInt32(hdnCodProducto.Value);
                BLL_PRODUCTO.actualizarProducto(NOMBREPRODUCTO,TIPOPRODUCTO,PRECIO,DESCRIPCION,IMAGEN,ID);

            }

            Response.Redirect("~/Admin_Log.aspx");

        }
        catch (Exception)
        {

        }

    }
}