using aw_im.Properties;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aw_im
{
    public partial class acceso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                inf_demp();
            }
            else
            {
            }

        }

        private void inf_demp()
        {
            //string navegador = left_right_mid.left(Request.Browser.Type, 6);
            //if (navegador == "Chrome")
            //{
            using (var m_emp = new db_imEntities())
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
            //}
            //else
            //{
            //    btn_acceso.Enabled = false;
            //    Mensaje("Esta aplicación requiere Google Chrome.");

            //}

        }

        protected void btn_acceso_Click(object sender, EventArgs e)
        {
            string user, pass, pass_qa;
            int cod_perf;
            Guid usrf_ID;

            user = i_usuario.Value;
            pass = encrypta.Encrypt(i_clave.Value);

            try

            {
                using (var m_usr = new db_imEntities())
                {
                    var i_usr = (from i_u in m_usr.inf_usuario
                                 join i_uh in m_usr.inf_usr_rh on i_u.usuario_ID equals i_uh.usuario_ID
                                 where i_u.usr == user
                                 select new
                                 {
                                     i_u.usuario_ID,
                                     i_u.clave,
                                     i_uh.perfil_ID
                                 }).ToList();

                    cod_perf = i_usr[0].perfil_ID;
                    usrf_ID = i_usr[0].usuario_ID;
                    pass_qa = i_usr[0].clave;
                    string dos = "fGVifCvpWWGgKTZ46axSOQ==";


                    string pass_de = encrypta.Decrypt(dos);
                    using (var m_corp = new db_imEntities())
                    {
                        var d_corp = (from i_corp in m_corp.inf_centro
                                      select i_corp).ToList();

                        if (d_corp.Count == 0)
                        {
                            //HttpCookie usr_cookie = new HttpCookie("usr_cookie", usrf_ID.ToString());
                            //Response.Cookies.Add(usr_cookie);
                            Session["ss_idusr"] = usrf_ID;

                            Response.Redirect("pnl_corporativo.aspx");
                        }
                        else
                        {
                            if (i_usr.Count == 0)
                            {
                                Mensaje("Usuario no existe, favor de re-intentar");
                            }
                            else
                            {
                                if (pass == pass_qa)
                                {
                                    //HttpCookie usr_cookie = new HttpCookie("usr_cookie", usrf_ID.ToString());
                                    //Response.Cookies.Add(usr_cookie);
                                    Session["ss_idusr"] = usrf_ID;
                                    switch (cod_perf)
                                    {
                                        case 1:

                                            Response.Redirect("pnl_control.aspx");
                                            break;
                                        case 2:

                                            Response.Redirect("pnl_control.aspx");
                                            break;
                                        case 3:



                                            Response.Redirect("pnl_control.aspx");
                                            break;

                                        case 4:

                                            Response.Redirect("pnl_control.aspx");

                                            break;

                                        case 5:
                                            Mensaje("Sin Acceso, favor de contactar al Corporativo");
                                            break;

                                        case 6:
                                            Mensaje("Sin Acceso, favor de contactar al Corporativo");
                                            break;

                                        case 7:

                                            Mensaje("Sin Acceso, favor de contactar al Corporativo");
                                            break;

                                        case 8:



                                            Response.Redirect("pnl_control.aspx");
                                            break;
                                        case 9:

                                            Response.Redirect("pnl_control.aspx");
                                            break;
                                        case 10:

                                            Response.Redirect("pnl_control.aspx");
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

        public void registrarSesion(HttpContext contexto, Guid usrf_ID)
        {
            TimeSpan TimeOut = new TimeSpan(0, 0, contexto.Session.Timeout, 0, 0);



            if (contexto.Cache[usrf_ID.ToString()] == null) //La sesion esta libre.
                contexto.Cache.Insert(usrf_ID.ToString(),
                contexto.Session.SessionID,
                null,
                DateTime.MaxValue,
                TimeOut,
                System.Web.Caching.CacheItemPriority.NotRemovable,
                null);
            contexto.Session["ss_idusr"] = usrf_ID;  //Guarda el nombre de usuario actual.

        }
    }
}