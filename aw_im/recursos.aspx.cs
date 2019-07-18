using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aw_im
{
    public partial class recursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            lbl_TituloPDF.Text = "Español";
            string d_pdf = "";
            iframe_pdf.Visible = true;
            iframe_pdf.Attributes["src"] = d_pdf;

        }

        protected void LinkButton56_Click(object sender, EventArgs e)
        {
            lbl_TituloPDF.Text = "Exploración de la Naturaleza y la Sociedad";
            string d_pdf = @"\material\recursos\librosdetexto\primergrado\1G_ExploracionDelaNaturalezaYLaSociedad.pdf";
            iframe_pdf.Visible = true;
            iframe_pdf.Attributes["src"] = d_pdf;
        }

        protected void LinkButton34_Click(object sender, EventArgs e)
        {
            divLibrosdeTexto.Visible = true;
        }
    }
}