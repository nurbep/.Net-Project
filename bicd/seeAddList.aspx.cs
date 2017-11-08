using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class seeAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DataSet myCustomers;
        /*myCustomers = (DataSet)Cache["firmCustomers"];*/

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AppConnectionString1"].ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter("Select * from Advertise", conn);
        myCustomers = new DataSet();
        da.Fill(myCustomers);
        /*SqlCacheDependency myDependency = new SqlCacheDependency("bicd", "AddImage");
        Response.AddCacheDependency(myDependency);
        Response.Cache.SetValidUntilExpires(true);
        Response.Cache.SetExpires(DateTime.Now.AddMinutes(60));
        Response.Cache.SetCacheability(HttpCacheability.Public);*/


        GridView1.DataSource = myCustomers;
        GridView1.DataBind();
    }
   /* protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        Session["AddTitle"] = GridView1.SelectedRow.Cells[3].Text;
        
        Response.Redirect("seeAdd.aspx");
    }*/

    
}