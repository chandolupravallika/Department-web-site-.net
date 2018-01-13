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

public partial class NewSCourseForm : System.Web.UI.Page
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
                    ddlReportview.DataSource = cmd.ExecuteReader();
                    ddlReportview.DataTextField = "courseID";
                    ddlReportview.DataValueField = "courseID";
                    ddlReportview.DataBind();
                    con.Close();
                }
            }
            ddlcourses.Items.Insert(0, new ListItem("--Course Details--", "0"));

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
        SqlCommand cmd = new SqlCommand("select distinct(courseID),cname,professor from usercourse ", con);
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
        Label lblcourseID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblcourseID");
        Label lblcname = (Label)GridView1.Rows[e.RowIndex].FindControl("lblcname");
        Label lblprof = (Label)GridView1.Rows[e.RowIndex].FindControl("lblprof");
        
        cmd.CommandText = "Delete from usercourse where username='" + Session["New"].ToString() + "' and courseID='" + lblcourseID.Text + "' and cname='" + lblcname.Text + "' and professor='" + lblprof.Text + "'";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        message.Text = "You have successfully unregestered for course " + lblcourseID.Text;
        BindData();
    }

    protected void InsertRecord(object sender, EventArgs e)
    {
        // GET THE ACTIVE GRIDVIEW ROW.
        Button bt = (Button)sender;
        GridViewRow grdRow = (GridViewRow)bt.Parent.Parent;

        // NOW GET VALUES FROM FIELDS FROM THE ACTIVE ROW.
        Label lblcourseID = (Label)grdRow.Cells[0].FindControl("lblcourseID");
        Label lblcname = (Label)grdRow.Cells[0].FindControl("lblcname");
        Label lblprof = (Label)grdRow.Cells[0].FindControl("lblprof");
        
        string sCon = ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString;

        using (SqlConnection con = new SqlConnection(sCon))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            
                con.Open();
            
            cmd.CommandText = "INSERT INTO usercourse (username, courseID,cname, professor) VALUES(@uName, @CID, @cname, @professor)";
                cmd.Parameters.AddWithValue("@uName", Session["New"].ToString());
                cmd.Parameters.AddWithValue("@CID", lblcourseID.Text.Trim());
                cmd.Parameters.AddWithValue("@cname", lblcname.Text.Trim());
                cmd.Parameters.AddWithValue("@professor", lblprof.Text.Trim());

                cmd.ExecuteNonQuery();
            
        }
        message.Text = "You have regestered successfully for course " + lblcourseID.Text;
        // REFRESH THE GRIDVIEW CONTROL TO SHOW THE NEWLY INSERTED ROW.
        BindData();
    }
    
    
    protected void StuLogOut_Click1(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void coursebtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student.aspx?Value=" + ddlcourses.SelectedValue);
    }
    protected void reportviewbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("SReportView.aspx?RVValue=" + ddlReportview.SelectedValue);
    }
}