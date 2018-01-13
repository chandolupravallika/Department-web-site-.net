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


public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DeptConnections"].ToString());
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "insert into user1(Username,password,usertype,name,Address,contactno,mailid) values('" + txtuname.Text + "','"
            + txtpwd.Text + "','"
            + DropDownList1.SelectedValue.ToString() + "','"
            + txtname.Text + "','"
            + txtaddress.Text + "','"
            + txtcontact.Text + "','"
            + txtmail.Text + "')";
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Login Page.aspx?id=register");
    }
}