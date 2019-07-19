using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication1
{
    public partial class Registration : System.Web.UI.Page
    {
        string ImageName;
        protected void btnregister_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=SDT170\SQLEXPRESS;Initial Catalog=Projit;Integrated Security=true");
            SqlCommand cmd = new SqlCommand();
            SqlParameter paramName = new SqlParameter();
            paramName.ParameterName = "@EMP_Name";
            paramName.Value = txtname.Text;
            cmd.Parameters.Add(paramName);

            SqlParameter paramAddress = new SqlParameter();
            paramAddress.ParameterName = "@EMP_Address";
            paramAddress.Value = txtaddress.Text;
            cmd.Parameters.Add(paramAddress);

            SqlParameter paramCity = new SqlParameter();
            paramCity.ParameterName = "@City";
            paramCity.Value = txtcity.Text;
            cmd.Parameters.Add(paramCity);

            SqlParameter paramPhone = new SqlParameter();
            paramPhone.ParameterName = "@Phone";
            paramPhone.Value = txtphone.Text;
            cmd.Parameters.Add(paramPhone);

            SqlParameter paramEmail = new SqlParameter();
            paramEmail.ParameterName = "@Email";
            paramEmail.Value = txtemail.Text;
            cmd.Parameters.Add(paramEmail);

            SqlParameter paramJoining = new SqlParameter();
            paramJoining.ParameterName = "@DATE_OF_Joining";
            paramJoining.Value = txtjoining.Text;
            cmd.Parameters.Add(paramJoining);

            SqlParameter paramGrade = new SqlParameter();
            paramGrade.ParameterName = "@Grade";
            paramGrade.Value = txtgrade.Text;
            cmd.Parameters.Add(paramGrade);

            SqlParameter paramDepartment = new SqlParameter();
            paramDepartment.ParameterName = "@Department";
            paramDepartment.Value = txtdept.Text;
            cmd.Parameters.Add(paramDepartment);

            SqlParameter paramDesignation = new SqlParameter();
            paramDesignation.ParameterName = "@Designation";
            paramDesignation.Value = txtdesig.Text;
            cmd.Parameters.Add(paramDesignation);

            SqlParameter paramGender = new SqlParameter();
            paramGender.ParameterName = "@Gender";
            paramGender.Value = rdbGender.SelectedItem.Text;
            cmd.Parameters.Add(paramGender);

            SqlParameter paramSalary = new SqlParameter();
            paramSalary.ParameterName = "@Salary";
            paramSalary.Value = txtsalary.Text;
            cmd.Parameters.Add(paramSalary);

            SqlParameter paramPicture = new SqlParameter();
            paramPicture.ParameterName = "@Profile_pic";
            paramPicture.Value = fuploader.PostedFile.FileName;
            cmd.Parameters.Add(paramPicture);

            fuploader.SaveAs(Server.MapPath("~/Upload/" + fuploader.PostedFile.FileName));

            string query = "sp_Registration";
            cmd.CommandText = query;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conn;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}