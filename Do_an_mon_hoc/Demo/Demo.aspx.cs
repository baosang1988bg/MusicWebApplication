using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Demo_Demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loadData();
    }
    
    public void loadData() {
        Rpt_BXH.DataSource = getData("SELECT * FROM CASI");
        Rpt_BXH.DataBind();
    }

    public DataTable getData(String commandSQL) {
        String ConnectString = ConfigurationManager.ConnectionStrings["SQLServerProvider"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConnectString);
        try
        {
            SqlCommand cmdSQL = new SqlCommand(commandSQL, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmdSQL);
            DataSet myDataSet = new DataSet();
            adapter.Fill(myDataSet);
            return myDataSet.Tables[0];
        }
        catch {
            Response.Write("Kết nối không thành công");
        }
        return null;
    }
}