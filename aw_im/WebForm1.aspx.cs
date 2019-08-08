using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aw_im
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            if (FileUpload1.HasFile)
            {
                try
                {
                    sb.AppendFormat(" Uploaded file: {0}", FileUpload1.FileName);
                    //save the file
                    //string oPath = Server.MapPath(string.Format("~/Imagenes/{0}", oContador));
                    string oPath = Server.MapPath(string.Format(@"~/material/" + FileUpload1.FileName));
                    FileUpload1.SaveAs(oPath);
                    //Showing the file information

                    sb.Append("<br/> File Name: {0}" + FileUpload1.PostedFile.FileName);
                    sb.Append("<br/> File type: {0}" + FileUpload1.PostedFile.ContentType);
                    sb.Append("<br/> File length: {0}" + FileUpload1.FileBytes.Length);
                    Label1.Text = sb.ToString();
                }
                catch (Exception ex)
                {
                    sb.Append("<br/> Error <br/>");
                    sb.Append(ex.Message);
                    Label1.Text = sb.ToString();
                }
            }
            else
            {
                Label1.Text = sb.ToString();
            }
        }
    }
}