using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindData();
        }
        private void bindData()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["connectionDB"]);
            SqlCommand cmd = new SqlCommand();
            SqlParameter paramName = new SqlParameter();
            paramName.ParameterName = "@Name";
            paramName.Value = Session["LoggedInName"].ToString();
            cmd.Parameters.Add(paramName);            

            string query = "SELECT * FROM Registration WHERE Email=@Email";
            cmd.CommandText = query;
            //  cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conn;
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                lblName.Text = dr["Name"].ToString();
                lblMobile.Text = dr["Mobile"].ToString();
                lblGender.Text = dr["Gender"].ToString();
            }
            conn.Close();
        }
    }
}