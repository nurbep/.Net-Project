using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class seeForum : System.Web.UI.Page
{
    public string st = "";
    public int forumid;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            st = HttpUtility.UrlDecode(Request.QueryString["ForumTitle"]);

        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AppConnectionString1"].ConnectionString);
        conn.Open();
        String str1 = "select * from Forum_View where ForumTitle='" + st + "'";

        SqlCommand com1 = new SqlCommand(str1, conn);
        SqlDataReader reader1 = com1.ExecuteReader();

        //string username = "";
        while (reader1.Read())
        {
            DateTime date = (DateTime)reader1["ForumDate"];
            lblForumDate.Text = date.ToString("MMMM d, yyyy");

            lblforumDesc.Text = reader1["ForumDes"].ToString();

            lblName.Text = reader1["FullName"].ToString();
            string s = reader1["ForumId"].ToString();
            forumid = int.Parse(s);
            Session["s"] = s;
            hfForumId.Value = s;
            lblTitle.Text = reader1["ForumTitle"].ToString();
        }
       // txtWriteComment.Text = forumid.ToString();
        reader1.Close();
        //conn.Close();
        /* String str2 = "select * from Member where UserName='" + username + "'";
         SqlCommand com2 = new SqlCommand(str2, conn);
         SqlDataReader reader2 = com2.ExecuteReader();
         while (reader2.Read())
         {
             lblName.Text = reader2["FullName"].ToString();
         }
         reader2.Close();*/
        //SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["AppConnectionString1"].ConnectionString);
        //conn1.Open();
        DataSet myCustomers;

        //int i = forumid;
        SqlDataAdapter da = new SqlDataAdapter("Select * from Comment_View where ForumId=" + forumid + "", conn);

        myCustomers = new DataSet();
        da.Fill(myCustomers);
        /*SqlCacheDependency myDependency = new SqlCacheDependency("bicd", "AddImage");
        Response.AddCacheDependency(myDependency);
        Response.Cache.SetValidUntilExpires(true);
        Response.Cache.SetExpires(DateTime.Now.AddMinutes(60));
        Response.Cache.SetCacheability(HttpCacheability.Public);*/


        GridView1.DataSource = myCustomers;
        GridView1.DataBind();

        conn.Close();
        //txtWriteComment.Text = forumid.ToString();
    }

    protected void btncomment_Click(object sender, EventArgs e)
    {




       // Label1.Text = hfForumId.Value.ToString();
        SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["AppConnectionString1"].ConnectionString);
        conn2.Open();
        int j =int.Parse(hfForumId.Value);
        SqlCommand cmd = new SqlCommand("Insert into Comment(ForumId,UserName,Comment) values("+j+",@UserName,@Comment)", conn2);
        
          //cmd.Parameters.AddWithValue("@ForumId",forumid.ToString());
          cmd.Parameters.AddWithValue("@UserName", Session["UserName"].ToString());

          cmd.Parameters.AddWithValue("@Comment",txtWriteComment.Text);
          //cmd.Parameters.AddWithValue("@ForumId",));
          

          cmd.ExecuteNonQuery();
          
       DataSet myCustomers;
        SqlDataAdapter da = new SqlDataAdapter("Select * from Comment_View where ForumId=" +j+ "", conn2);
         myCustomers = new DataSet();
        da.Fill(myCustomers);
        
        GridView1.DataSource = myCustomers;
        GridView1.DataBind();
        conn2.Close();
        txtWriteComment.Text = "";
                //sponse.Redirect("seeForum.aspx");*/
            }
            
        
    }

       


        
