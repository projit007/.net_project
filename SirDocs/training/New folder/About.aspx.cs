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
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkBtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=SLAP210\SQLEXPRESS;Initial Catalog=Training;Integrated Security=true");
            SqlCommand cmd = new SqlCommand();
            SqlParameter paramName = new SqlParameter();
            paramName.ParameterName = "@Name";
            paramName.Value = txtName.Text;

            cmd.Parameters.Add(paramName);

            SqlParameter paramEmail = new SqlParameter();
            paramEmail.ParameterName = "@Email";
            paramEmail.Value = txtEmail.Text;
            cmd.Parameters.Add(paramEmail);

            SqlParameter paramMobile = new SqlParameter();
            paramMobile.ParameterName = "@Mobile";
            paramMobile.Value = txtMobile.Text;
            cmd.Parameters.Add(paramMobile);

            SqlParameter paramPassword = new SqlParameter();
            paramPassword.ParameterName = "@Password";
            paramPassword.Value = txtPwd.Text;
            cmd.Parameters.Add(paramPassword);

            SqlParameter paramGender = new SqlParameter();
            paramGender.ParameterName = "@Gender";
            paramGender.Value = rdbGender.SelectedItem.Text;
            cmd.Parameters.Add(paramGender);

            string query = "sp_registration";
            cmd.CommandText = query;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conn;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}