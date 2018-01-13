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

public partial class MessageView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            DMName.Text = Session["New"].ToString();
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
            }

            ddlcourses.Items.Insert(0, new ListItem("--Course Details--", "0"));
        }
        if (!Page.IsPostBack)
        {
            BindData();
        }
    }

    protected void coursebtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("coursedetail.aspx?Value=" + ddlcourses.SelectedValue);
    }
    protected void DMLogOut_Click1(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Default.aspx");
    }
    public void BindData()
    {
        string constr = ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from messages where Fuser='" + Session["New"] + "'  or Tuser='"+Session["New"]+"'", con);
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
        Label lblFromID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblFuser");
        Label lblToID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblTuser");
        TextBox txtsubID = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsubject");
        TextBox txtconID= (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcontent");
        cmd.CommandText = "Delete from messages where Fuser='" + lblFromID.Text + "' and Tuser='"+ lblToID.Text+ "' and subject='"+txtsubID.Text+"' and content='"+txtconID.Text+ "'";
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
        Label lblFromID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblFuser");
        Label lblToID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblTuser");
        TextBox txtsubID = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsubject");
        TextBox txtconID = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcontent");
        TextBox txtRconID = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtRcontent");
        cmd.Connection = con;
        cmd.CommandText = "Update messages set Fuser='" + lblFromID.Text + "',Tuser='" + lblToID.Text + "',subject='" + txtsubID.Text + "',content='" + txtconID.Text + "',Rcontent='"+ txtRconID.Text+ "' where Fuser='" + lblFromID.Text + "'and Tuser='" + lblToID.Text + "' and subject='" + txtsubID.Text + "'";
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
}