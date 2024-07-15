using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Techneurons
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\91918\\source\\repos\\Techneurons\\Techneurons\\App_Data\\Employee.mdf;Integrated Security=True");
        SqlCommand cmd;
        string Sql;
        protected void Page_Load(object sender, EventArgs e)
        
            {
                if (!IsPostBack)
            {
                con.Open();
            }
            }
        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        void LoadRecord()
        {
            SqlCommand conn = new SqlCommand("select *from employee",con);
            SqlDataAdapter d = new SqlDataAdapter(conn);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource=dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}