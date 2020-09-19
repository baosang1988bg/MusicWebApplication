using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Demo_TrangPhatNhac : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getCurrentMusic();
        getListMusic();
    }
    public void getCurrentMusic() {
        String myString = Request.QueryString["mabh"];
        rpt_CurrentMusic.DataSource = getData("SELECT * FROM BAIHAT, CASI WHERE MABH = '" + myString + "' AND BAIHAT.MACASI = CASI.MACASI");
        rpt_CurrentMusic.DataBind();
    }

    public void getListMusic() {
        String myString = Request.QueryString["mabh"];
        rpt_ListMusic.DataSource = getData("SELECT TOP 10 * FROM BAIHAT, CASI WHERE BAIHAT.MACASI = CASI.MACASI AND MABH <> '" + myString + "' ORDER BY NEWID()");
        rpt_ListMusic.DataBind();
    }
    public DataTable getData(string query) {
        string strConn = ConfigurationManager.ConnectionStrings["SQLServerProvider"].ConnectionString;
        SqlConnection conn = new SqlConnection(strConn);
        try
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            conn.Close();
            return ds.Tables[0];
        }
        catch {
            Response.Write("Lỗi kết nối");
        }
        return null;
    }
}