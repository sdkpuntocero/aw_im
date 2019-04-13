using Microsoft.Reporting.WebForms;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace aw_im
{
    public partial class rpt_remision : System.Web.UI.Page
    {
        public static Guid vnta_ID;
        private static string nombre_rpt = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            if (!IsPostBack)
            {
                defual_rpt();
            }
            else
            {
            }
            //}
            //catch
            //{
            //    Response.Redirect("acceso.aspx");
            //}
        }

        private void defual_rpt()
        {
            vnta_ID = (Guid)(Session["vntaf_ID"]);
            DataSet ds00 = new DataSet();

            using (bd_imEntities m_vnta = new bd_imEntities())
            {
                var i_vnta = (from t_clte in m_vnta.fn_tbl_remision(vnta_ID)
                              select t_clte).ToList();

                if (i_vnta.Count == 0)
                {
                }
                else
                {
                    nombre_rpt = i_vnta[0].cod_vnta;
                }
            }

            #region ds00

            // Setup DataSet

            SqlDataAdapter da00 = new SqlDataAdapter();
            SqlCommand cmd00 = new SqlCommand(@"SELECT * FROM [bd_im].[dbo].[v_rpt_remision] WHERE [vnta_ID] IN ('" + vnta_ID + "')");
            cmd00.CommandType = CommandType.Text;
            cmd00.Connection = new SqlConnection(cn.cn_SQL);
            da00.SelectCommand = cmd00;

            da00.Fill(ds00, "DataSet1");

            ReportDataSource rds00 = new ReportDataSource("DataSet1", ds00.Tables[0]);

            #endregion ds00

            Warning[] warnings;
            string[] streamIds;
            string mimeType = string.Empty;
            string encoding = string.Empty;
            string extension = string.Empty;

            ReportViewer viewer = new ReportViewer();
            viewer.ProcessingMode = ProcessingMode.Local;
            viewer.LocalReport.ReportPath = Server.MapPath("~/reportes/remision.rdl"); ;
            viewer.LocalReport.EnableHyperlinks = true;
            viewer.LocalReport.DataSources.Add(rds00);

            byte[] bytes = viewer.LocalReport.Render("PDF", null, out mimeType, out encoding, out extension, out streamIds, out warnings);

            Response.Buffer = true;
            Response.Clear();
            Response.ContentType = mimeType;
            Response.AddHeader("content-disposition", "attachment; filename=" + "" + nombre_rpt + "" + "." + extension);
            Response.BinaryWrite(bytes); // create the file
            Response.Flush(); // send it to the client to download
            
        }

        private void CreatePDF(string fileName)
        {
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/reportes/rpt_concreto.rdl");

            System.Data.DataSet ds = new System.Data.DataSet();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand(@"SELECT [vnta_ID]
      ,[cod_vnta]
      ,[registro]
      ,[cod_centro]
      ,[licencia_desc]
      ,[centro_nom]
      ,[telefono]
      ,[email]
      ,[callenum]
      ,[d_asenta]
      ,[d_codigo]
      ,[d_mnpio]
      ,[d_estado]
      ,[d_ciudad]
      ,[nombres_oper]
      ,[apaterno_oper]
      ,[amaterno_oper]
      ,[cod_clte]
      ,[nombres]
      ,[apaterno]
      ,[amaterno]
      ,[cod_inv]
      ,[nivel_escolar_desc]
      ,[grado_escolar_desc]
      ,[categoria]
      ,[inv_desc]
      ,[caracteristica]
      ,[costo]
      ,[cantidad]
      ,[porcentaje_desc]
      ,[total_inv]
  FROM [bd_im].[dbo].[v_rpt_remision] WHERE [vnta_ID] IN ('" + vnta_ID + "')");
            cmd.CommandType = CommandType.Text;
            cmd.Connection = new SqlConnection(cn.cn_SQL);
            da.SelectCommand = cmd;

            string str_nrpt = null;
            using (bd_imEntities m_vnta = new bd_imEntities())
            {
                var i_vnta = (from t_clte in m_vnta.fn_tbl_remision(vnta_ID)
                              select t_clte).ToList();

                if (i_vnta.Count == 0)
                {
                }
            }
            da.Fill(ds, "DataSet1");
            ReportDataSource datasource = new ReportDataSource("DataSet1", ds.Tables[0]);
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(datasource);
            ReportViewer1.LocalReport.EnableHyperlinks = true;
            ReportViewer1.LocalReport.DisplayName = "LIEC-1494";
            //ReportViewer1.LocalReport.Refresh();

            //Code For Download Direct PDF

            Warning[] warnings;
            string[] streamIds;
            string mimeType = string.Empty;
            string encoding = string.Empty;
            string extension = string.Empty;

            byte[] bytes = ReportViewer1.LocalReport.Render("PDF", null, out mimeType, out encoding, out extension, out streamIds, out warnings);

            // Now that you have all the bytes representing the PDF report, buffer it and send it to the client.
            Response.Buffer = true;
            Response.Clear();
            Response.ContentType = mimeType;
            Response.AddHeader("content-disposition", "attachment; filename= LIEC-1494.pdf");
            Response.BinaryWrite(bytes); // create the file
            Response.Flush();
        }
    }
}