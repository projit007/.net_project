using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["connectionDB"]);
            SqlCommand cmd = new SqlCommand();
            SqlParameter paramName = new SqlParameter();
            paramName.ParameterName = "@Email";
            paramName.Value = txtEmail.Text;
            cmd.Parameters.Add(paramName);

            SqlParameter paramPassword = new SqlParameter();
            paramPassword.ParameterName = "@Password";
            paramPassword.Value = txtPwd.Text;
            cmd.Parameters.Add(paramPassword);

            string query = "SELECT name FROM Registration WHERE Email=@Email and Password=@password";
            cmd.CommandText = query;
            //  cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conn;
            conn.Open();
            object objName = cmd.ExecuteScalar();
            conn.Close();
            if (objName != null)
            {
                string name = objName.ToString(); // convert from object variable to string
                Session["LoggedInName"] = name;
                Response.Redirect("default.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
            }
           

           
                
        }
    }
}