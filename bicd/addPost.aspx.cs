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

public partial class addPost : System.Web.UI.Page
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

        //Close dbconnection

        
            SqlCommand cmd = new SqlCommand("Insert into Advertise(UserName,AddTitle,AddDes,AddMobile,AddLocation,AddPic) values(@UserName,@AddTitle,@AddDes,@AddMobile,@AddLocation,@AddPic)", con);
            //Passing parameters to query



            if (FileUpload1.HasFile)
            {
                filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/advertiseImages/" + filename));
            }
            else
            {
                filename = "Desert.jpg";

                FileUpload1.SaveAs(Server.MapPath("~/advertiseImages/" + filename));

            }
            cmd.Parameters.AddWithValue("@UserName",Session["UserName"].ToString());
            cmd.Parameters.AddWithValue("@AddTitle",txtAddTitle.Text);

            cmd.Parameters.AddWithValue("@AddDes",txtAddDes.Text );
            cmd.Parameters.AddWithValue("@AddMobile",txtMobile.Text);
            cmd.Parameters.AddWithValue("@AddLocation",txtAddLocation.Text);
          
            cmd.Parameters.AddWithValue("@AddPic", "~/advertiseImages/" + filename);

            cmd.ExecuteNonQuery();
            con.Close();

            // Response.Redirect("succ.aspx");
        }





    
}
