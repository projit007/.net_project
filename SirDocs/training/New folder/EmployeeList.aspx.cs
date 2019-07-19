using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace WebApplication1
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
                bind();
        }
        private void bind()
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["connectionDB"]);
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Registration", conn);
            //da.SelectCommand.Connection = conn;
            //da.SelectCommand.CommandText = "SELECT * FROM Registration";

            da.Fill(ds);
            conn.Close();

            grid1.DataSource = ds;
            grid1.DataBind();
        }
        protected void grid1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grid1.EditIndex = e.NewEditIndex;
            bind();
        }

        protected void grid1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grid1.EditIndex = -1;
            bind();
        }
    }
}