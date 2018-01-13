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

public partial class NewCourseForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            ProfForm.Text = Session["New"].ToString();
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
        


    }

    protected void NewSubmit_Click(object sender, EventArgs e)
    {
        try
        {

            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DeptConnections"].ConnectionString);
                conn.Open();
                string checkcourse = "SELECT count(*) FROM usercourse WHERE courseID='" + txtCID.Text + "' or cname='" + txtcname.Text + "'";
                SqlCommand comd = new SqlCommand(checkcourse, conn);
                int temp = Convert.ToInt32(comd.ExecuteScalar().ToString());
                if (temp > 0)
                {
                    message.Text="Course already exists";


                    return;
                }
                else
                {
                    string InsertQuery = "Insert into usercourse (username,courseID,cname,professor) values(@un,@c,@cn,@pn)";
                    SqlCommand com = new SqlCommand(InsertQuery, conn);
                    com.Parameters.AddWithValue("@un", Session["New"]);
                    com.Parameters.AddWithValue("@c", txtCID.Text);
                    com.Parameters.AddWithValue("@cn", txtcname.Text);
                    com.Parameters.AddWithValue("@pn", txtpname.Text);


                    com.ExecuteNonQuery();


                    message.Text = "Course Created Successfully";

                }

                conn.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("Something went wrong" + ex.ToString());
        }
        
    }
    protected void ProfLogOut_Click1(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void coursebtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("coursedetail.aspx?Value=" + ddlcourses.SelectedValue);
    }
}