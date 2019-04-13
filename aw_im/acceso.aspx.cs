using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aw_im
{
    public partial class acceso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
                if (!IsPostBack)
                {
                    inf_demp();
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

        private void inf_demp()
        {
            using (var m_emp = new bd_imEntities())
            {
                var i_env = (from i_e in m_emp.inf_email_env
                             select i_e).ToList();

                if (i_env.Count == 0)
                {
                    Response.Redirect("notificaciones.aspx");
                }
                else
                {
                    var i_emp = (from i_e in m_emp.inf_emp
                                 select i_e).ToList();

                    if (i_emp.Count == 0)
                    {
                        lkb_registro_inicial.Visible = true;
                        Mensaje("Sin registro de empresa, favor de registrar una.");
                    }
                }
            }
        }

        protected void btn_acceso_Click(object sender, EventArgs e)
        {
            string user, pass, pass_qa;
            int cod_area;
            Guid usrf_ID;

            user = i_usuario.Value;
            pass = encrypta.Encrypt(i_clave.Value);

            try

            {
                using (var m_usr = new bd_imEntities())
                {
                    var i_usr = (from i_u in m_usr.inf_usuario
                                 join i_uh in m_usr.inf_usr_rh on i_u.usuario_ID equals i_uh.usuario_ID
                                 where i_u.usr == user
                                 select new
                                 {
                                     i_u.usuario_ID,
                                     i_u.clave,
                                     i_uh.area_ID
                                 }).ToList();

                    cod_area = i_usr[0].area_ID;
                    usrf_ID = i_usr[0].usuario_ID;
                    pass_qa = i_usr[0].clave;

                    using (var m_corp = new bd_imEntities())
                    {
                        var d_corp = (from i_corp in m_corp.inf_centro
                                      select i_corp).ToList();

                        if (d_corp.Count == 0)
                        {
                            Session["ss_idusr"] = usrf_ID;

                            Response.Redirect("pnl_corporativo.aspx");
                        }
                        else
                        {
                            if (i_usr.Count == 0)
                            {
                                Mensaje("Usuario no existe, favor de reintentar");
                            }
                            else
                            {
                                if (pass == pass_qa)
                                {
                                    switch (cod_area)
                                    {
                                        case 2:
                                            Session["ss_idusr"] = usrf_ID;

                                            Response.Redirect("pnl_control.aspx");
                                            break;
                                        case 3:

                                            Session["ss_idusr"] = usrf_ID;

                                            Response.Redirect("pnl_control.aspx");
                                            break;

                                        case 4:
                                            Session["ss_idusr"] = usrf_ID;

                                            Response.Redirect("pnl_control.aspx");
                                            break;

                                        case 5:
                                            Session["ss_idusr"] = usrf_ID;

                                            Response.Redirect("pnl_control.aspx");
                                            break;

                                        case 6:
                                            Session["ss_idusr"] = usrf_ID;

                                            Response.Redirect("pnl_cont.aspx");
                                            break;

                                        case 7:

                                            Session["ss_idusr"] = usrf_ID;

                                            Response.Redirect("pnl_capt.aspx");
                                            break;

                                        case 13:

                                            Session["ss_idusr"] = usrf_ID;

                                            Response.Redirect("pnl_recursos_humanos.aspx");
                                            break;

                                        default:

                                            break;
                                    }
                                }
                                else
                                {
                                    Mensaje("Contraseña incorrecta, favor de reintentar");
                                }
                            }
                        }
                    }
                }
            }
            catch
            {
                Mensaje("Datos incorrectos, favor de reintentar");
            }
        }

        private void Mensaje(string contenido)
        {
            lblModalTitle.Text = "Intelimundo";
            lblModalBody.Text = contenido;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }

        protected void lkb_registro_inicial_Click(object sender, EventArgs e)
        {
            Response.Redirect("registro_inicial.aspx");
        }
    }
}