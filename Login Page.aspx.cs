using System.Web.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

public partial class Login_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["id"]!=null)
        {
            if(Request.QueryString["id"].ToString()== "register")
            {
                lblerror.Text = "you have Registered Successfully";
            }
        }
    }

    protected void login_Click(object sender, EventArgs e)
    {
        lblerror.Text="login failed";
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from user1 where Username ='" + txtuname.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();

        if (temp == 1)
        {
            conn.Open();
            string checkpasswordQuery = "select password from user1 where Username ='" + txtuname.Text + "'";
            string checkjobQuery = "select usertype from user1 where Username ='" + txtuname.Text + "'";
            SqlCommand passcomm = new SqlCommand(checkpasswordQuery, conn);
            SqlCommand jobcomm = new SqlCommand(checkjobQuery, conn);
            string password = passcomm.ExecuteScalar().ToString().Replace(" ", "");
            string job = jobcomm.ExecuteScalar().ToString().Replace(" ", "");
            if (password == txtpwd.Text && job == usertype.SelectedValue)
            {

                if (usertype.SelectedValue == "Student")
                {
                    Session["new"] = txtuname.Text;
                    Response.Redirect("Student.aspx");
                }
                if (usertype.SelectedValue == "Professor")
                {
                    Session["new"] = txtuname.Text;
                    Response.Redirect("Professor.aspx");
                }
            }
            else
            {

                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "openModal();", true);
            }

        }


        else
        {
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "openModal2();", true);
        }

    }
}