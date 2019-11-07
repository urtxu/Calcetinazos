using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace Login_Proyecto
{
    public partial class Calcetines : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conection = ConfigurationManager.ConnectionStrings["DAM_GorkaUrtxuegia_DEVConnectionString"].ConnectionString;
            
                SqlConnection sqlcon = new SqlConnection(conection);
                string sqlQuery = "pr_imagen";
                SqlCommand sqlcom = new SqlCommand(sqlQuery, sqlcon);
                sqlcon.Open();
                SqlDataAdapter sda = new SqlDataAdapter(sqlcom);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                repeater1.DataSource = dt;
                repeater1.DataBind();
                sqlcon.Close();
            
        }

        protected void ibnEdit_Click(object sender, ImageClickEventArgs e)
        {
                        
        }
    }
}