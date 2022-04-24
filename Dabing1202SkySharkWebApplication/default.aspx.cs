using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dabing1202SkySharkWebApplication
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                String username;
                String password;
                username = txtUserName.Text;//value of textbox
                password = txtPassword.Text;

                String connectionString = ConfigurationManager.ConnectionStrings[
                "ARPDatabaseConnectionString"].ConnectionString;//get from web.config

                //get connection
                SqlConnection conn=new SqlConnection(connectionString);
                conn.Open();

                String sql = "select username , password , role from dtUsers where username ='" + username + "'";

                //get adapeter 
                SqlDataAdapter adapter = new SqlDataAdapter();  
                //create commnad 
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                adapter.SelectCommand = sqlCommand;

                //dataset -- collection of tables in momory 
                DataSet dataSet = new DataSet();

                adapter.Fill(dataSet,"dtUsers");//select data fill into DataSet 

                //check username is valid or not 
                if (dataSet.Tables["dtUsers"].Rows.Count == 0)
                {
                    //login fail 
                    lblMessage.Text = "Invalid Username";
                }
                else
                {
                    //check password 
                    if (dataSet.Tables["dtUsers"].Rows[0][1].ToString().Trim() == password.Trim())
                    {
                        //login success 
                        //set username and role in session 
                        String role;
                        role = dataSet.Tables["dtUsers"].Rows[0][2].ToString().Trim();
                        Session["usrName"] = username;
                        Session["usrRole"] = role;
                        if(role == "Disabled")
                        {
                            lblMessage.Text = "your account has been disabled. Please contact to Network Administrator ";
                            return;
                        }
                        //redirect to users home page 
                        switch (role)
                        {
                            case "Admin":
                                Response.Redirect(".\\NA\\ManageUsers.aspx");
                                break;
                            case "BM":
                                Response.Redirect(".\\BM\\AddFI.aspx");
                                break;
                            case "LOB":
                                Response.Redirect(".\\LOB\\CreateRes.aspx");
                                    break;

                        }
                    }
                    else
                    {
                        lblMessage.Text = "Invalid Password";
                    }

                    conn.Close();
                }
            }
        }
    }
}