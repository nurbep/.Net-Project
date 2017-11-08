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

public partial class create_member : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename;
        //Save images into Images folder



        //Getting dbconnection from web.config connectionstring
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

        string cmdStr = "Select count(*) from Advertise where UserName='" +txtUserName.Text+ "'";
        SqlCommand userExist = new SqlCommand(cmdStr, con);
        int temp = Convert.ToInt32(userExist.ExecuteScalar().ToString());


        //Close dbconnection
       
        if (!(temp == 1))
        {
            SqlCommand cmd = new SqlCommand("Insert into Member(FullName,UserName,Passwords,Email,ProfilePic) values(@FullName,@UserName,@Passwords,@Email,@ProfilePic)", con);
            //Passing parameters to query


            
            if (FileUpload1.HasFile)
            {
                filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/profilePictures/" + filename));
            }
            else
            {
                filename = "Desert.jpg";

                FileUpload1.SaveAs(Server.MapPath("~/profilePictures/" + filename));

            }
            cmd.Parameters.AddWithValue("@FullName",txtName.Text);
            cmd.Parameters.AddWithValue("@UserName",txtUserName1.Text);
            
            cmd.Parameters.AddWithValue("@Passwords",txtPassword.Text);
            cmd.Parameters.AddWithValue("@Email",txtEmail.Text);
            cmd.Parameters.AddWithValue("@ProfilePic", "~/profilePictures/" + filename);
           
            cmd.ExecuteNonQuery();
            con.Close();

           // Response.Redirect("succ.aspx");
        }
        else
        {
            Label1.Text = "UserName currently exists. ";

        }

       
        

            
    }
   
}