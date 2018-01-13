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

public partial class ReportView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            reportName.Text = Session["New"].ToString();
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
                using (SqlCommand cmd = new SqlCommand("SELECT courseID FROM usercourse where username='" + Session["New"] + "'"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    ddlcourses.DataSource = cmd.ExecuteReader();
                    ddlcourses.DataTextField = "courseID";
                    ddlcourses.DataValueField = "courseID";
                    ddlcourses.DataBind();
                    con.Close();
                }
                using (SqlCommand cmd = new SqlCommand("SELECT distinct(courseID) FROM usercourse where username='" + Session["New"] + "'"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    ddlReport.DataSource = cmd.ExecuteReader();
                    ddlReport.DataTextField = "courseID";
                    ddlReport.DataValueField = "courseID";
                    ddlReport.DataBind();
                    con.Close();
                }
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
            ddlcourses.Items.Insert(0, new ListItem("--Course Details--", "0"));
            ddlReport.Items.Insert(0, new ListItem("Create A Report", "0"));
            ddlReportview.Items.Insert(0, new ListItem("View Report", "0"));
        }
        if (!Page.IsPostBack)
        {
            BindData();
        }
    }
    public void BindData()
    {
        string constr = ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from report where courseID='"+ Request.QueryString["RVValue"].ToString() + "' and professor='" + Session["New"] + "' and professor!=sname", con);
        
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        Label lblCID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblCID");
        Label lblSName = (Label)GridView1.Rows[e.RowIndex].FindControl("lblSName");
        
        cmd.CommandText = "Delete from report where sname='" + lblSName.Text + "' and courseID='" + lblCID.Text + "'";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        BindData();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindData();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        Label lblSName = (Label)GridView1.Rows[e.RowIndex].FindControl("lblSName");
        Label lblCID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblCID");
        TextBox txtmarks = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtmarks");
        Label lblprofessor = (Label)GridView1.Rows[e.RowIndex].FindControl("lblprofessor");

        cmd.Connection = con;
        cmd.CommandText = "Update report set marks='" + txtmarks.Text + "' where sname='" + lblSName.Text + "' and courseID='" + lblCID.Text + "'";
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        BindData();
        con.Close();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindData();
    }
    protected void coursebtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("coursedetail.aspx?Value=" + ddlcourses.SelectedValue);
    }

    protected void reportbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reportform.aspx?RValue=" + ddlReport.SelectedValue);
    }
    protected void reportviewbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportView.aspx?RVValue=" + ddlReportview.SelectedValue);
    }
    protected void ReportLogOut_Click1(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Default.aspx");
    }
}