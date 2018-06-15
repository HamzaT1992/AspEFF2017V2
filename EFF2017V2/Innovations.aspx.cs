using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF2017V2
{
    public partial class Innovation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            Session["num_innovation"] = e.CommandArgument.ToString();
        }

        protected void rb1_CheckedChanged(object sender, EventArgs e)
        {
            tx1.Text = "";
        }

        protected void rb2_CheckedChanged(object sender, EventArgs e)
        {
            tx1.Visible = btn1.Visible = rb2.Checked;
        }
    }
}