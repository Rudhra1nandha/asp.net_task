using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webform_task_aspnet
{
    public partial class Login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try 
            {
                if (Txt_username.Text.Length >= 9 && txt_pass.Text.Length > 0)
                {
                    string constr = "Data Source = DESKTOP-TKJS7GO; Integrated Security = true; Initial Catalog =asp_task";

                    SqlConnection con = new SqlConnection(constr);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Sp_login", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("@Role", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = DropDownList1.SelectedValue;
                    SqlParameter p2 = new SqlParameter("@Email", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = Txt_username.Text;
                    SqlParameter p3 = new SqlParameter("@password", SqlDbType.VarChar);
                    cmd.Parameters.Add(p3).Value = txt_pass.Text;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    int i = ds.Tables[0].Rows.Count;
                    if (i > 0)
                    {
                        Session["Name"] = Txt_username.Text;
                        if (DropDownList1.SelectedValue == "Admin")
                        {
                            Session["selected"] = "Admin";
                            Response.Redirect("dashboard.aspx");


                        }
                        if (DropDownList1.SelectedValue == "Employee")
                        {
                            Session["selected"] = "Employee";
                            Response.Redirect("dashboard.aspx");

                        }
                    }
                    else
                    {
                        Response.Write("try again later");
                    }
                    con.Close();
                }
                else
                    Response.Write("enter the necssary datas");

            }
            catch (Exception ex)
            {
                throw ex;
            }






        }
    }
}