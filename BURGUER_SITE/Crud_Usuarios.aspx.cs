using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Crud_Usuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string codUserURL = Request.QueryString["id"];

            if (codUserURL != null)
            {
                DTO_EMPLEADO objuser = BLL_EMPLEADO.MostrarTodosID(Convert.ToInt32(codUserURL));
                if (objuser != null)
                {
                    id.Text = objuser.ID.ToString();
                    usuarioemp.Text = objuser.usuario;
                    contraseña.Text = objuser.contrasenia;
                    idtipoemplead.Text = objuser.ID_TipoEmpleado.ToString();
                    nombre.Text = objuser.Nombre;
                    celular.Text = objuser.Celular.ToString();
                    correo.Text = objuser.Correo;
                    direccion.Text = objuser.Direccion;
                    sueldo.Text = objuser.Sueldo.ToString();
                    


                }
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int ID = Convert.ToInt32(id.Text);
        string USUARIOEMPLEADO = usuarioemp.Text;
        string CONTRASENIA = contraseña.Text;
        int IDTIPOEMPLEADO = Convert.ToInt32(idtipoemplead.Text);
        string NOMBRE = nombre.Text;
        string CELULAR = celular.Text;
        string CORREO = correo.Text;
        string DIRRECCION = direccion.Text;
        decimal SUELDO = Convert.ToDecimal(sueldo.Text);
        

        
        try
        {

            if (string.IsNullOrEmpty(hdnCodProducto.Value))
            {
                BLL_EMPLEADO.insertarEmpleado(USUARIOEMPLEADO,CONTRASENIA,IDTIPOEMPLEADO,NOMBRE,CELULAR,CORREO,DIRRECCION,SUELDO);
            }
            else
            {
                int codUser = Convert.ToInt32(hdnCodProducto.Value);
                BLL_EMPLEADO.actualizarEmpleado(USUARIOEMPLEADO, CONTRASENIA, IDTIPOEMPLEADO, NOMBRE, CELULAR, CORREO, DIRRECCION, SUELDO,ID);

            }

            Response.Redirect("~/Admin_Log.aspx");

        }
        catch (Exception)
        {

        }
    }
}

