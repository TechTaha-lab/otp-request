using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace otp.Request
{
    public partial class admin : System.Web.UI.Page
    {
        // Define your connection string
        string connectionString = "Data Source=./;Initial Catalog=makes;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        protected void BindGrid()
        {
            string query = "SELECT request_id, email, msg FROM request";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void accept(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int requestId = Convert.ToInt32(btn.CommandArgument);
            string status = "Your Request has been accepted";

            InsertNotification(status, requestId);

            // Rebind grid after update
            BindGrid();
        }

        protected void reject(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int requestId = Convert.ToInt32(btn.CommandArgument);
            string status = "Your Request has been rejected";

            InsertNotification(status, requestId);

            // Rebind grid after update
            BindGrid();
        }

        private void InsertNotification(string status, int requestId)
        {
            string query = "INSERT INTO notification (status, r_id) VALUES (@status, @requestId)";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@status", status);
                        cmd.Parameters.AddWithValue("@requestId", requestId);
                        connection.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        
    }
}
