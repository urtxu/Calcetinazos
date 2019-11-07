using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Login_Proyecto
{
    public partial class login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            btnIniciar.Enabled = false;
        }
        

        

        protected void btnIniciar_Click1(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=segundo150;Initial Catalog=DAM_GorkaUrtxuegia_DEV;Integrated Security=True"))
            {

                SqlCommand cmd = new SqlCommand(); 
                cmd.CommandText = "pr_loginCliente";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter pEmail = new SqlParameter("@email", SqlDbType.VarChar);
                pEmail.Direction = ParameterDirection.Input;
                pEmail.Value = txt_Email.Text;
                cmd.Parameters.Add(pEmail);

                SqlParameter pContrasena = new SqlParameter("@contrasena", SqlDbType.VarChar);
                pContrasena.Direction = ParameterDirection.Input;
                pContrasena.Value = txt_Contrasena.Text;
                cmd.Parameters.Add(pContrasena);


                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label1.Text = "Bienvenido";
                }

                catch (Exception)
                {
                    Label1.Text = "<br/><br/>Necesitas registrarte!";
                }
            }
        }

        protected void txt_Email_TextChanged(object sender, EventArgs e)
        {
            if (txt_Email.Text != "" || txt_Contrasena.Text != "")
            {
                btnIniciar.Enabled = true ;
            }
        }

        protected void txt_Contrasena_TextChanged(object sender, EventArgs e)
        {
            if (txt_Email.Text != "" || txt_Contrasena.Text != "")
            {
                btnIniciar.Enabled = true;
            }
        }
    }
}