using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loadData();
    }
    public void loadData() {
        my_rpt.DataSource = getData("SELECT * FROM CASI");
        my_rpt.DataBind();
    }
    public DataTable getData(string query)
    {
        string strConn = ConfigurationManager.ConnectionStrings["SQLServerProvider"].ConnectionString;
        SqlConnection conn = new SqlConnection(strConn);
        try
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds.Tables[0];
        }
        catch
        {
            Response.Write("Lỗi kết nối");
        }
        return null;
    }
}