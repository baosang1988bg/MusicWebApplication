using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Demo_Demo1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loadDataSlide();
    }

    protected void loadDataSlide()
    {
        string sqlquery = "SELECT TOP 1 ANHCASI, TENCASI, MACASI FROM CASI GROUP BY TENCASI, ANHCASI, SOLUONGBH, MACASI ORDER BY SOLUONGBH DESC";
        rpt_carousel_active.DataSource = getData(sqlquery);
        rpt_carousel_active.DataBind();

        string sqlquery1 = "SELECT TOP 4 ANHCASI, TENCASI, MACASI FROM CASI GROUP BY TENCASI, ANHCASI, SOLUONGBH, MACASI ORDER BY SOLUONGBH ASC";
        rpt_carousel.DataSource = getData(sqlquery1);
        rpt_carousel.DataBind();
    }

    public void loadDataBaiHat() {
        string sql = "SELECT * FROM BAIHAT ORDER BY NEWID()";
        rpt_baihat.DataSource = getData(sql);
        rpt_baihat.DataBind();
    }

    public void loadDataCaSi() { 
        
    }
    protected DataTable getData(string query)
    {
        String ConnectString = ConfigurationManager.ConnectionStrings["SQLServerProvider"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConnectString);
        try
        {
            SqlCommand sql_cmd = new SqlCommand(query, conn);
            SqlDataAdapter sda = new SqlDataAdapter(sql_cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds.Tables[0];
        }
        catch(Exception e)
        {
            Response.Write(e.StackTrace.ToString());
        }
        return null;
    }
}