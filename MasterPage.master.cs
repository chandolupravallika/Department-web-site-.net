using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Data;
using System.Drawing;
using System.Text;

using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string url = Image1.ImageUrl;
        Image1.ImageUrl = Image2.ImageUrl;
        Image2.ImageUrl = Image3.ImageUrl;
        Image3.ImageUrl = url;
    }
    
protected void Button4_Click1(object sender, EventArgs e)
    {
        string url = Image3.ImageUrl;
        Image3.ImageUrl = Image2.ImageUrl;
        Image2.ImageUrl = Image1.ImageUrl;
        Image1.ImageUrl = url;
    }
}
