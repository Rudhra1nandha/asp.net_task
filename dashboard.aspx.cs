using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webform_task_aspnet
{
    public partial class dashboard : System.Web.UI.Page
    {

        string constr = "Data Source = DESKTOP-TKJS7GO; Integrated Security = true; Initial Catalog =asp_task";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["selected"] == "Admin")
            {

                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand("Sp_data1", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView2.DataSource = ds.Tables[0];
                GridView2.DataBind();
                con.Close();

                
            }
            else {
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand("Sp_data", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView2.DataSource = ds.Tables[0];
                GridView2.DataBind();
                con.Close();

            }

        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            
           

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
    }
}