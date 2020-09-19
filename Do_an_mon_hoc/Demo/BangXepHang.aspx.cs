using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Demo_BangXepHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loadTop10();
    }

    public void loadTop10() {
        rpt_listitem.DataSource = getData("SELECT TOP 20 * FROM BAIHAT, CASI WHERE BAIHAT.MACASI = CASI.MACASI ORDER BY LUOTNGHE DESC");
        rpt_listitem.DataBind();
    }

    public DataTable getData(string querystr) {
        string queryConn = ConfigurationManager.ConnectionStrings["SQLServerProvider"].ConnectionString;
        SqlConnection conn = new SqlConnection(queryConn);
        try
        {
            SqlCommand cmd = new SqlCommand(querystr, conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds.Tables[0];
        }
        catch {
            Response.Write("Lỗi");
        }
        return null;
    }


}