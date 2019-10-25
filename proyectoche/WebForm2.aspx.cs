using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace proyectoche
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_registrar_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=segundo150;Initial Catalog=DAM_GorkaUrtxuegia_DEV;Integrated Security=True"))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "pr_altaCliente";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter p_nombre = new SqlParameter("@nombre", SqlDbType.VarChar);
                p_nombre.Direction = ParameterDirection.Input;
                p_nombre.Value = txt_Nombre.Text;
                cmd.Parameters.Add(p_nombre);

                SqlParameter p_apellido = new SqlParameter("@apellido", SqlDbType.VarChar);
                p_apellido.Direction = ParameterDirection.Input;
                p_apellido.Value = txt_Apellido.Text;
                cmd.Parameters.Add(p_apellido);

                SqlParameter p_email = new SqlParameter("@email", SqlDbType.VarChar);
                p_email.Direction = ParameterDirection.Input;
                p_email.Value = txt_Email.Text;
                cmd.Parameters.Add(p_email);

                SqlParameter p_contrasena = new SqlParameter("@contrasena ", SqlDbType.VarChar);
                p_contrasena.Direction = ParameterDirection.Input;
                p_contrasena.Value = txt_Contrasena.Text;
                cmd.Parameters.Add(p_contrasena);

                SqlParameter p_direccion = new SqlParameter("@direccion ", SqlDbType.VarChar);
                p_direccion.Direction = ParameterDirection.Input;
                p_direccion.Value = txt_Direccion.Text;
                cmd.Parameters.Add(p_direccion);

                SqlParameter p_poblacion = new SqlParameter("@poblacion ", SqlDbType.VarChar);
                p_poblacion.Direction = ParameterDirection.Input;
                p_poblacion.Value = txt_poblacion.Text; 
                cmd.Parameters.Add(p_poblacion);

                SqlParameter p_municipio = new SqlParameter("@municipio ", SqlDbType.VarChar);
                p_municipio.Direction = ParameterDirection.Input;
                p_municipio.Value = txt_municipio.Text;
                cmd.Parameters.Add(p_municipio);

                SqlParameter p_cp = new SqlParameter("@cp ", SqlDbType.Char);
                p_cp.Direction = ParameterDirection.Input;
                p_cp.Value = txt_CP.Text;
                cmd.Parameters.Add(p_municipio);

                SqlParameter p_telefono = new SqlParameter("@tlf ", SqlDbType.Char);
                p_telefono.Direction = ParameterDirection.Input;
                p_telefono.Value = txt_telefono.Text;
                cmd.Parameters.Add(p_municipio);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label1.Text = "Bienvenido";
                }

                catch (Exception)
                {
                    Label1.Text = "No te has dado de alta en nuestra empresa mazo flama!";
                }
            }



        }
    }
}
    }
}