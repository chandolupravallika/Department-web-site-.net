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

public partial class coursedetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            PName.Text = Session["New"].ToString();
        }
        else
        {
            Response.Redirect("professor.aspx");
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
      //  if (Request.QueryString["Value"] != null)
       // {
       //     ProfessorName.Text = Request.QueryString["Value"].ToString();
       // }
        if (!this.IsPostBack)
        {
            BindGridView();
        }
    }
    private void BindGridView()
    {
        string constr = ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from usercourse where courseID='"+ Request.QueryString["Value"].ToString() + "' and professor='"+Session["New"]+"'", con);
        con.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
      //  delete from usercourse where courseID = '" + row.Cells[1].Text + "'
      //      and professor = '" + row.Cells[1].Text + "' 
      //      and username = '"+ row.Cells[0].Text + "' 
      //      and cname = '"+ row.Cells[2].Text + "'
        Label lblUName = (Label)GridView1.Rows[e.RowIndex].FindControl("lblUName");
        Label lblCID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblCID");
       // Label lblcname = (Label)GridView1.Rows[e.RowIndex].FindControl("lblcname");
      //  Label lblprofessor = (Label)GridView1.Rows[e.RowIndex].FindControl("lblprofessor");

        cmd.CommandText = "Delete from usercourse where username='" + lblUName.Text + "' and courseID='" + lblCID.Text + "' ";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        BindGridView();
    }
    protected void ProfessorLogOut_Click1(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Default.aspx");
    }

    protected void coursebtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("coursedetail.aspx?Value=" + ddlcourses.SelectedValue);
    }
}