using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;

namespace otp.Request
{
    public partial class request : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=./;Initial Catalog=makes;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void add(object sender, EventArgs e)
        {
            string email = TextBox1.Text;
            string msg = TextBox2.Text;
            string query = "INSERT INTO request(email,msg) VALUES(@email,@msg)";
            try
            {
                connection.Open();
                using(SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@email", email);
                    command.Parameters.AddWithValue("@msg", msg);
                    int rows = command.ExecuteNonQuery();
                    if (rows > 0)
                    {
                        Response.Write("<script>alert('add succesfully')</script>");
                        clear();
                    }
                    else
                    {
                        Response.Write("<script>alert('failed')</script>");
                    
                }
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                connection.Close();
            }

        }
        public void clear()
        {

            string email = TextBox1.Text;
            string msg = TextBox2.Text;
            email = "";
            msg = "";
        }
    }
}