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
    public partial class AjouterInnovation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var con = new SqlConnection(@"Data Source=(localdb)\fact;Initial Catalog=TP2017v2;Integrated Security=True"))
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                var cmd = new SqlCommand("insert into Innovation values(@num,@des,@res,@act)", con);
                cmd.Parameters.AddWithValue("@num", numero.Text);
                cmd.Parameters.AddWithValue("@des", descriptif.Text);
                cmd.Parameters.AddWithValue("@res", resume.Text);
                cmd.Parameters.AddWithValue("@act", num_activite.Text);
                var dr = cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Insertion réussie!')</script>");
            }
        }
    }
}