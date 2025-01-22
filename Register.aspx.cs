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
    public partial class Register : System.Web.UI.Page
    {

        string constr = "Data Source = DESKTOP-TKJS7GO; Integrated Security = true; Initial Catalog =asp_task";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Txt_name.Text.Length >= 3 && Txt_email.Text.Length >= 9 && Txt_native.Text.Length >= 2 && Txt_pincode.Text.Length == 6)
            {
                if (Txt_pass.Text == Txt_cpass.Text)
                {
                    SqlConnection con = new SqlConnection(constr);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Sp_user", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    SqlParameter p1 = new SqlParameter("@UserName", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = Txt_name.Text;
                    SqlParameter p2 = new SqlParameter("@Email", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = Txt_email.Text;
                    SqlParameter p3 = new SqlParameter("@Role", SqlDbType.VarChar);
                    cmd.Parameters.Add(p3).Value = DropDownList1.SelectedValue;
                    SqlParameter p4 = new SqlParameter("@Native", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = Txt_native.Text;
                    SqlParameter p5 = new SqlParameter("@pincode", SqlDbType.Int);
                    cmd.Parameters.Add(p5).Value = Txt_pincode.Text;
                    SqlParameter p6 = new SqlParameter("@password", SqlDbType.VarChar);
                    cmd.Parameters.Add(p6).Value = Txt_pass.Text;
                    SqlParameter p7 = new SqlParameter("@Cpassword", SqlDbType.VarChar);
                    cmd.Parameters.Add(p7).Value = Txt_cpass.Text;

                    int i = cmd.ExecuteNonQuery();

                    if (i > 0)
                    {
                        Response.Write("Registered Successfully");
                        Txt_name.Text = ""; Txt_email.Text = ""; Txt_native.Text = ""; Txt_pincode.Text = "";Txt_cpass.Text = "";Txt_pass.Text = "";
                      
                    }
                    else
                        Response.Write("try again later");

                    con.Close();

                }
                else
                    Response.Write("Password MisMatch");

            }
            else
                Response.Write("* Please check the user name is greater than 3 char," +
                               "* please verify the email and native with 6 digit pincode");

        }
    }
}