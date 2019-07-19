using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlState.Items.Clear();
            if (ddlCountry.SelectedValue == "IND")
            {
                ddlState.Items.Add("WB");
                ddlState.Items.Add("Punjab");
            }
            else if (ddlCountry.SelectedValue == "US")
            {
                ddlState.Items.Add("California");
                ddlState.Items.Add("Washington");
            }
        }
    }
}