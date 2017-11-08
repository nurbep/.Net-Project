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
        string st = "";
        if (!this.IsPostBack)
        {
            st = HttpUtility.UrlDecode(Request.QueryString["AddTitle"]);

        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AppConnectionString1"].ConnectionString);
       conn.Open();
       String str1 = "select * from Advertise where AddTitle='" + st.ToString() + "'";
        SqlCommand com1 = new SqlCommand(str1, conn);
        SqlDataReader reader1 = com1.ExecuteReader();
        lblTitle.Text =st.ToString();
        string username="";
        while (reader1.Read())
        {
            DateTime date =(DateTime) reader1["AddDate"];
            lblAddDate.Text = date.ToString("MMMM d, yyyy"); 
            Image1.ImageUrl = reader1["AddPic"].ToString();
            lblAddDes.Text = reader1["AddDes"].ToString();
            lblAddLocal.Text = reader1["AddLocation"].ToString();
            lblAddMob.Text = reader1["AddMobile"].ToString();
            username = reader1["UserName"].ToString();
        }
        reader1.Close();
        String str2 = "select * from Member where UserName='"+username+"'";
        SqlCommand com2 = new SqlCommand(str2, conn);
        SqlDataReader reader2 = com2.ExecuteReader();
        while(reader2.Read()){
            lblName.Text = reader2["FullName"].ToString();
        }
        reader2.Close();
       
       
        conn.Close();
    }
    
}
