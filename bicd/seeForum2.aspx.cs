using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class seeForum2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AppConnectionString1"].ConnectionString);
        conn.Open();
        DataSet myCustomers;

        int i = int.Parse(Session["s"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("Select * from Comment_View where ForumId="+i+"", conn);

        myCustomers = new DataSet();
        da.Fill(myCustomers);
        /*SqlCacheDependency myDependency = new SqlCacheDependency("bicd", "AddImage");
        Response.AddCacheDependency(myDependency);
        Response.Cache.SetValidUntilExpires(true);
        Response.Cache.SetExpires(DateTime.Now.AddMinutes(60));
        Response.Cache.SetCacheability(HttpCacheability.Public);*/


        gridComment.DataSource = myCustomers;
        gridComment.DataBind();

        conn.Close();
    }
}