using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF2017V2
{
    public partial class Connexion : System.Web.UI.Page
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
                var cmd = new SqlCommand("select * from Activite where num_activite=@num and motdepasse=@pass", con);
                cmd.Parameters.AddWithValue("@num", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                var dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
                    var cookie = new HttpCookie("user")
                    {
                        Value = TextBox1.Text,
                        Expires = DateTime.Now + FormsAuthentication.Timeout,
                    };
                    Response.Cookies.Add(cookie);
                }
                else
                    Label1.Text = "Login ou mot de passe incorrect";
            }
        }
    }
}