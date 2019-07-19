using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class EmployeeGrid : System.Web.UI.Page
    {
        String status;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
                bind();
        }

        private void bind()
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(@"Data Source=SDT170\SQLEXPRESS;Initial Catalog=Projit;Integrated Security=true");
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM EMPLOYEE_MANAGEMET", conn);
            //da.SelectCommand.Connection = conn;
            //da.SelectCommand.CommandText = "SELECT * FROM Registration";

            da.Fill(ds);
            conn.Close();

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            //status = ddlStatus.SelectedItem;
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = GridView1.Rows[e.RowIndex].FindControl("txtId") as Label;
            String ID = id.Text;
            TextBox address = GridView1.Rows[e.RowIndex].FindControl("txtAddress") as TextBox;
            TextBox city = GridView1.Rows[e.RowIndex].FindControl("txtCity") as TextBox;
            TextBox phone = GridView1.Rows[e.RowIndex].FindControl("txtPhone") as TextBox;
            TextBox grade = GridView1.Rows[e.RowIndex].FindControl("txtGrade") as TextBox;
            TextBox department = GridView1.Rows[e.RowIndex].FindControl("txtDepartment") as TextBox;
            TextBox designation = GridView1.Rows[e.RowIndex].FindControl("txtDesignation") as TextBox;
            TextBox salary = GridView1.Rows[e.RowIndex].FindControl("txtSalary") as TextBox;
            TextBox picture = GridView1.Rows[e.RowIndex].FindControl("txtPicture") as TextBox;

            SqlConnection conn = new SqlConnection(@"Data Source=SDT170\SQLEXPRESS;Initial Catalog=Projit;Integrated Security=true");
            SqlCommand cmd = new SqlCommand();

            SqlParameter paramTD = new SqlParameter();
            paramTD.ParameterName = "@ID";
            paramTD.Value = ID;
            cmd.Parameters.Add(paramTD);

            SqlParameter paramAddress = new SqlParameter();
            paramAddress.ParameterName = "@EMP_ADDRESS";
            paramAddress.Value = address.Text;
            cmd.Parameters.Add(paramAddress);

            SqlParameter paramCity = new SqlParameter();
            paramCity.ParameterName = "@CITY";
            paramCity.Value = city.Text;
            cmd.Parameters.Add(paramCity);

            SqlParameter paramPhone = new SqlParameter();
            paramPhone.ParameterName = "@PHONE";
            paramPhone.Value = phone.Text;
            cmd.Parameters.Add(paramPhone);

            SqlParameter paramGrade = new SqlParameter();
            paramGrade.ParameterName = "@GRADE";
            paramGrade.Value = grade.Text;
            cmd.Parameters.Add(paramGrade);

            SqlParameter paramDepartment = new SqlParameter();
            paramDepartment.ParameterName = "@DEPARTMENT";
            paramDepartment.Value = department.Text;
            cmd.Parameters.Add(paramDepartment);

            SqlParameter paramDesignation = new SqlParameter();
            paramDesignation.ParameterName = "@DESIGNATION";
            paramDesignation.Value = designation.Text;
            cmd.Parameters.Add(paramDesignation);

            SqlParameter paramSalary = new SqlParameter();
            paramSalary.ParameterName = "@SALARY";
            paramSalary.Value = salary.Text;
            cmd.Parameters.Add(paramSalary);

            SqlParameter paramStatus = new SqlParameter();
            paramStatus.ParameterName = "@STATUS";
            paramStatus.Value = status;
            cmd.Parameters.Add(paramStatus);

            string query = "sp_Emp_Grid_Update";
            cmd.CommandText = query;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conn;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            GridView1.EditIndex = -1;
            bind();
        }
    }
}