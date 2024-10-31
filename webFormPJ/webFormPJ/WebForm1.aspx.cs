using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace webFormPJ
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentsString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            refreshGridView();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection=sqlConnection;
            sqlCommand.CommandText = "insert into Students values (@name, @lastname, @studentno)";
            sqlCommand.Parameters.AddWithValue("@name", TbName.Text);
            sqlCommand.Parameters.AddWithValue("@lastname", TbLastName.Text);
            sqlCommand.Parameters.AddWithValue("@studentno", Convert.ToInt32(TbStuNo.Text));
            sqlConnection.Open();
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
            refreshGridView();
            TbStuNo.Text = "";
            TbName.Text = "";
            TbLastName.Text = "";
        }

        private void refreshGridView()
        {
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection = sqlConnection;
            sqlCommand.CommandText = "select * from Students";
            SqlDataAdapter sda = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection = sqlConnection;
            sqlCommand.CommandText = "select * from Students where StudentNo = @studentno";
            sqlCommand.Parameters.AddWithValue("@studentno",Convert.ToInt32(TbStuNo.Text));
            sqlConnection.Open();
            SqlDataReader reader =  sqlCommand.ExecuteReader();
            if (reader.HasRows) { 
                reader.Read();
                stuPK.Text = reader[0].ToString();
                TbName.Text = reader[1].ToString();
                TbLastName.Text = reader[2].ToString();
                reader.Close();
                btnUpdate.Enabled = false;
            }
            else
            {
                stuPK.ForeColor = System.Drawing.Color.Red;
                stuPK.Text = "Student not found!";

            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            stuPK.Text = "----------------------";
            TbName.Text = "";
            TbLastName.Text = "";
            TbStuNo.Text = "";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection = sqlConnection;
            sqlCommand.CommandText = "update Students set Name = @Name, LastName = @LastName where StudentNo = @StudentNo";
            sqlCommand.Parameters.AddWithValue("@name", TbName.Text);
            sqlCommand.Parameters.AddWithValue("@LastName", TbLastName.Text);
            sqlCommand.Parameters.AddWithValue("@StudentNo", TbStuNo.Text);
            sqlConnection.Open();
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
            btnUpdate.Enabled = true;
            refreshGridView();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        /*        protected void btnDelete_Click(object sender, EventArgs e)
                {
                    SqlCommand sqlCommand = new SqlCommand();
                    sqlCommand.Connection= sqlConnection;
                    sqlCommand.CommandText = "delete Students set name = @Name, LastName = @LastName where StudentNo = @StudentNo";
                    sqlConnection.Open();
                    sqlCommand.ExecuteNonQuery();
                    sqlConnection.Close();
                    refreshGridView();
                }*/
    }
}