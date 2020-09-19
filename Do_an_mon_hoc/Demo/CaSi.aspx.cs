using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Demo_Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        getThongTinCaSi();
        getDataListMusic();
        getListCaSi();
    }

    public void getListCaSi()
    {
        String myQuery = Request.QueryString["macasi"];
        rpt_CaSiQuanTam.DataSource = getData("SELECT TOP 20 * FROM  CASI WHERE MACASI <> '" + myQuery+"' ORDER BY NEWID()");
        rpt_CaSiQuanTam.DataBind();
    }
    public void getThongTinCaSi()
    {
        String myQuery = Request.QueryString["macasi"];
        rpt_ThongTinCaSi.DataSource = getData("SELECT * FROM CASI WHERE MACASI ='" + myQuery + "'");
        rpt_ThongTinCaSi.DataBind();
    }

    public void getDataListMusic()
    {
        String myQuery = Request.QueryString["macasi"];
        rpt_BaiHat_CaSi.DataSource = getData("SELECT * FROM BAIHAT, CASI WHERE BAIHAT.MACASI = CASI.MACASI AND BAIHAT.MACASI = '" + myQuery + "'");
        rpt_BaiHat_CaSi.DataBind();
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