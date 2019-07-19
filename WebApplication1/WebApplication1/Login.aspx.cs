using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=SDT170\SQLEXPRESS;Initial Catalog=Projit;Integrated Security=true");
            SqlCommand cmd = new SqlCommand();
            SqlParameter paramName = new SqlParameter();
            paramName.ParameterName = "@Email";
            paramName.Value = txtuser_name.Text;
            cmd.Parameters.Add(paramName);

            SqlParameter paramPassword = new SqlParameter();
            paramPassword.ParameterName = "@Password";
            paramPassword.Value = txtpwd.Text;
            cmd.Parameters.Add(paramPassword);

            string query = "SELECT ADMIN_NAME FROM EMPLOYEE_MANAGEMENT_ADMIN WHERE ADMIN_EMAIL=@Email and ADMIN_PASSWORD=@password";
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
                Response.Redirect("Registration.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
            }
        }
    }
}