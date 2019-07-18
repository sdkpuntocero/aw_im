using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aw_im
{
    public partial class materiales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton114_Click(object sender, EventArgs e)
        {
            lbl_TituloPDF.Text = "Exploración de la Naturaleza y la Sociedad";
            string d_pdf = @"\material\preescolar\DesarrolloDeHabilidades\PreescolarDesarrolloDeHabilidades1.pdf";
            iframe_pdf.Visible = true;
            iframe_pdf.Attributes["src"] = d_pdf;
        }

        //protected void lkbRecursos_Click(object sender, EventArgs e)
        //{
        //    divRecursos.Visible = true;
        //    divPreescolar.Visible = false;
        //    divPrimaria.Visible = false;
        //    divSecundaria.Visible = false;
        //    divMediaSuperior.Visible = false;
        //    divIngreso.Visible = false;
        //    divIdiomas.Visible = false;

        //    Response.Redirect("recursos.aspx");
        //}

        //protected void lkbPreescolar_Click(object sender, EventArgs e)
        //{
        //    divRecursos.Visible = false;
        //    divPreescolar.Visible = true;
        //    divPrimaria.Visible = false;
        //    divSecundaria.Visible = false;
        //    divMediaSuperior.Visible = false;
        //    divIngreso.Visible = false;
        //    divIdiomas.Visible = false;

        //    Response.Redirect("preescolar.aspx");
        //}

        //protected void lkbPrimaria_Click(object sender, EventArgs e)
        //{
        //    divRecursos.Visible = false;
        //    divPreescolar.Visible = false;
        //    divPrimaria.Visible = true;
        //    divSecundaria.Visible = false;
        //    divMediaSuperior.Visible = false;
        //    divIngreso.Visible = false;
        //    divIdiomas.Visible = false;

        //    Response.Redirect("primaria.aspx");
        //}

        //protected void lkbSecundaria_Click(object sender, EventArgs e)
        //{
        //    divRecursos.Visible = false;
        //    divPreescolar.Visible = false;
        //    divPrimaria.Visible = false;
        //    divSecundaria.Visible = true;
        //    divMediaSuperior.Visible = false;
        //    divIngreso.Visible = false;
        //    divIdiomas.Visible = false;

        //    Response.Redirect("secundaria.aspx");
        //}

        //protected void lkbMediaSuperior_Click(object sender, EventArgs e)
        //{
        //    divRecursos.Visible = false;
        //    divPreescolar.Visible = false;
        //    divPrimaria.Visible = false;
        //    divSecundaria.Visible = false;
        //    divMediaSuperior.Visible = true;
        //    divIngreso.Visible = false;
        //    divIdiomas.Visible = false;

        //    Response.Redirect("mediasuperior.aspx");
        //}

        //protected void lkbIngreso_Click(object sender, EventArgs e)
        //{
        //    divRecursos.Visible = false;
        //    divPreescolar.Visible = false;
        //    divPrimaria.Visible = false;
        //    divSecundaria.Visible = false;
        //    divMediaSuperior.Visible = false;
        //    divIngreso.Visible = true;
        //    divIdiomas.Visible = false;

        //    Response.Redirect("ingreso.aspx");
        //}

        //protected void lkbIdioma_Click(object sender, EventArgs e)
        //{
        //    divRecursos.Visible = false;
        //    divPreescolar.Visible = false;
        //    divPrimaria.Visible = false;
        //    divSecundaria.Visible = false;
        //    divMediaSuperior.Visible = false;
        //    divIngreso.Visible = false;
        //    divIdiomas.Visible = true;

        //    Response.Redirect("idioma.aspx");
        //}
    }
}