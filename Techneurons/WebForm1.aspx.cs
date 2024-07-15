using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Techneurons
{
    public partial class WebForm1 : System.Web.UI.Page
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


      
         protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            Sql = "INSERT INTO employee (EmployeeId,Name,Address,District) VALUES("
                + TextBox1.Text + ", '"
                + TextBox2.Text + "', '"
                + TextBox3.Text + "', '"
                + DropDownList1.SelectedItem.Text + "')"; 
            cmd = new SqlCommand(Sql,con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this,this.GetType(),"script","alert('Successfully inserted');",true);
            LoadRecord();
           
                }
        void LoadRecord()
        {
            SqlCommand conn = new SqlCommand("select *from employee", con);
            SqlDataAdapter d = new SqlDataAdapter(conn);
            DataTable dt = new DataTable();
            d.Fill(dt);
            
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            Sql ="UPDATE employee SET Name= '" + TextBox2.Text + "' ,Address= '" + TextBox3.Text + "', District= '" + DropDownList1.SelectedItem.Text + "' WHERE EmployeeId= " + TextBox1.Text + " " ;
            cmd = new SqlCommand(Sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            Sql = "DELETE employee WHERE EmployeeId=" + TextBox1.Text + "";
            cmd = new SqlCommand(Sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            LoadRecord();

        }

              
    }

}