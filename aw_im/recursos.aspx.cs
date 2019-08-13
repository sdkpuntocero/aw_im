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
        public static Guid empf_ID = Guid.Empty, usr_ID = Guid.Empty;
        public static int int_idperf;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
               
                    try
                    {
                        inf_usr_oper();
                    }
                    catch
                    {
                    }
                }
            }
            catch
            {
                Response.Redirect("acceso.aspx");
            }
        }

        private void inf_usr_oper()
        {
            //usr_ID = Guid.Parse(Request.Cookies[1].Value);
            usr_ID = (Guid)(Session["ss_idusr"]);

            using (db_imEntities m_usuario = new db_imEntities())
            {
                var i_usuario = (from i_u in m_usuario.inf_usuario
                                 join i_up in m_usuario.inf_usr_personales on i_u.usuario_ID equals i_up.usuario_ID
                                 join i_uh in m_usuario.inf_usr_rh on i_u.usuario_ID equals i_uh.usuario_ID
                                 join i_pu in m_usuario.fact_perfil on i_uh.perfil_ID equals i_pu.perfil_ID
                                 join i_e in m_usuario.inf_centro on i_u.centro_ID equals i_e.centro_ID
                                 where i_u.usuario_ID == usr_ID
                                 select new
                                 {
                                     i_u.usuario_ID,
                                     i_u.cod_usr,
                                     i_up.nombres,
                                     i_up.apaterno,
                                     i_up.amaterno,
                                     i_pu.perfil_desc,
                                     i_pu.perfil_ID,
                                     i_e.centro_ID,
                                     i_e.centro_nom
                                 }).FirstOrDefault();

                lkb_usr_f.Text = i_usuario.nombres + " " + i_usuario.apaterno + " " + i_usuario.amaterno;
                lkb_usr_fp.Text = i_usuario.perfil_desc;
                int_idperf = i_usuario.perfil_ID;
                lkb_usr_fc.Text = i_usuario.centro_nom;
                Session["ss_idcnt"] = Guid.Parse(i_usuario.centro_ID.ToString());
                empf_ID = (Guid)(Session["ss_idcnt"]);
        
            }
        }
    }
}