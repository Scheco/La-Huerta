using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using MySql.Web;
using System.Web.UI.WebControls;
using System.Data;

/// <summary>
/// Descripción breve de ConexionBD
/// </summary>
public class ConexionBD
{
    //Cadena de conexion
    public static String cadenaConexion = "Server=localhost;Database=purificadora;Uid=root;Pwd=Madrid96";

    //Generando la aplicacion de la cadena de conexion
    static MySqlConnection conectando = new MySqlConnection(cadenaConexion);


    //Metodo para guardar clientes
    public static int AlmacenaCliente(params String[] Registros)
    {
        conectando.Open();
        MySqlCommand ingresa = new MySqlCommand("insert into registro_cliente values(0,@nombre, @apellidos, @estado, @ciudad, @domicilio, @email, @password)", conectando);
        ingresa.Parameters.AddWithValue("@nombre", Registros[0]);
        ingresa.Parameters.AddWithValue("@apellidos", Registros[1]);
        ingresa.Parameters.AddWithValue("@estado", Registros[2]);
        ingresa.Parameters.AddWithValue("@ciudad", Registros[3]);
        ingresa.Parameters.AddWithValue("@domicilio", Registros[4]);
        ingresa.Parameters.AddWithValue("@email", Registros[5]);
        ingresa.Parameters.AddWithValue("@password", Registros[6]);
        int R = 0;
        try
        {
            R = ingresa.ExecuteNonQuery();
        }
        catch (Exception e)
        {
        }
        conectando.Close();
        return R;
    }

    public ConexionBD()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}