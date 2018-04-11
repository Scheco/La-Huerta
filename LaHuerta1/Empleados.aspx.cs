using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Empleados : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed6_Click(object sender, EventArgs e)
    {

    }

    protected void Unnamed6_Click1(object sender, EventArgs e)
    {
        int registroEmpleado = ConexionBD.AlmacenaEmpleados(Nombre.Text, Apellidos.Text, Tipo.Text, Licencia.Text, Edad.Text);
        if (registroEmpleado > 0)
        {
            Response.Redirect("Empleados.aspx");
        }
    }
}