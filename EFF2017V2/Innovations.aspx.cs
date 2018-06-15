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
            //using (var con = new SqlConnection(@"Data Source=(localdb)\fact;Initial Catalog=TP2017v2;Integrated Security=True"))
            //{
            //    if (con.State == ConnectionState.Closed)
            //        con.Open();
            //    var cmd = new SqlCommand("select * from Certificat where num_innovation=@num", con);
            //    cmd.Parameters.AddWithValue("@num", e.CommandArgument.ToString());
            //    var dr = cmd.ExecuteReader();
            //    var dt = new DataTable();
            //    dt.Load(dr);
            //    GridView2.DataSource = dt;
            //    GridView2.DataBind();
            //}
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //using (var con = new SqlConnection(@"Data Source=(localdb)\fact;Initial Catalog=TP2017v2;Integrated Security=True"))
            //{
            //    if (con.State == ConnectionState.Closed)
            //        con.Open();
            //    var cmd = new SqlCommand("select * from Certificat where num_innovation=@num", con);
            //    cmd.Parameters.AddWithValue("@num", GridView1.SelectedRow.Cells[0].Text );
            //    var dr = cmd.ExecuteReader();
            //    var dt = new DataTable();
            //    dt.Load(dr);
            //    GridView2.DataSource = dt;
            //    GridView2.DataBind();
            //}
        }
    }
}