using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        String user = txtuser.Text;
        String pass = txtpwd.Text;
        //DTOUser userautenticado = BLLUSER.login(user, pass);
        if (pass == "01admin")
        {
            Response.Redirect("~/Admin_Log.aspx");
        }
        else
        {
            Response.Redirect("~/User_Log.aspx");
        }
    }
}