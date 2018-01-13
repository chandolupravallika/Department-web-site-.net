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
using System.Data;
using System.Configuration;
using System.Collections;

public partial class SMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            userBox.Text = Session["New"].ToString();
            PName.Text = Session["New"].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
        if (!this.IsPostBack)
        {
            string constr = ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd1 = new SqlCommand("SELECT distinct(Username) FROM user1"))
                {
                    cmd1.CommandType = CommandType.Text;
                    cmd1.Connection = con;
                    con.Open();
                    ddlreceiver.DataSource = cmd1.ExecuteReader();
                    ddlreceiver.DataTextField = "Username";
                    ddlreceiver.DataValueField = "Username";
                    ddlreceiver.DataBind();
                    con.Close();
                }
                ddlreceiver.Items.Insert(0, new ListItem("--Receiver name--", "0"));
            }

        }
    }
    protected void SendButton_Click(object sender, EventArgs e)
    {

        try
        {

            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString);
                conn.Open();

                string InsertQuery = "INSERT into Messages(Fuser,Tuser,subject,content) values(@to,@frm,@sub,@msg)";
                SqlCommand com = new SqlCommand(InsertQuery, conn);
                com.Parameters.AddWithValue("@to", ddlreceiver.SelectedItem.ToString());
                com.Parameters.AddWithValue("@frm", userBox.Text);
                com.Parameters.AddWithValue("@sub", subject.Text);
                com.Parameters.AddWithValue("@msg", Messbox.Text);

                com.ExecuteNonQuery();


                msg.Text = "Message sent successfully to " + ddlreceiver.SelectedItem.ToString();



                conn.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("Something went wrong" + ex.ToString());
        }
    }
    protected void PmessLogOut_Click1(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Default.aspx");
    }
}