using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class writeForum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
SqlConnection con = new SqlConnection("data source=nayan-pc;initial catalog=bicd;integrated security=true");

        //Open the database connection
        con.Open();
        //Query to insert images path and name into database


        /* 
          cmd1.Parameters.AddWithValue("@AddPic", "~/images/" + filename);


          cmd.Parameters.AddWithValue("@UserName", Session["key"]);
          cmd.Parameters.AddWithValue("@AddTitle", TextBox2.Text);
          cmd.Parameters.AddWithValue("@AddDes",TextBox3.Text);
       
      cmd.Parameters.AddWithValue("@AddContact", TextBox4.Text);*/

        //Close dbconnection

        
            SqlCommand cmd = new SqlCommand("Insert into Forum(UserName,ForumTitle,ForumDes) values(@UserName,@ForumTitle,@ForumDes)", con);
            //Passing parameters to query



            
            cmd.Parameters.AddWithValue("@UserName",Session["UserName"].ToString());
            cmd.Parameters.AddWithValue("@ForumTitle",txtForumTitle.Text);

            
            cmd.Parameters.AddWithValue("@ForumDes",txtForumDes.Text);
            

            cmd.ExecuteNonQuery();
            con.Close();

            // Response.Redirect("succ.aspx");
        }
        
    }
