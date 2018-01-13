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

public partial class SReportView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            StudentName.Text = Session["New"].ToString();
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
                
                using (SqlCommand cmd = new SqlCommand("SELECT distinct(courseID) FROM usercourse where username='" + Session["New"] + "'"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    ddlReportview.DataSource = cmd.ExecuteReader();
                    ddlReportview.DataTextField = "courseID";
                    ddlReportview.DataValueField = "courseID";
                    ddlReportview.DataBind();
                    con.Close();
                }
            }
            
            ddlReportview.Items.Insert(0, new ListItem("View Report", "0"));
        }
        if (!this.IsPostBack)
        {
            BindGridView();
        }
    }
    private void BindGridView()
    {
        string constr = ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select distinct(courseID),marks,professor from report where sname='" + Session["New"].ToString() + "' and courseID='"+ Request.QueryString["RVValue"].ToString() + "'", con);
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void StuLogOut_Click1(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Default.aspx");
    }
   
    protected void reportviewbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("SReportView.aspx?RVValue=" + ddlReportview.SelectedValue);
    }
}