//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace aw_im
{
    using System;
    using System.Collections.Generic;
    
    public partial class inf_usr_contacto
    {
        public System.Guid usr_contacto_ID { get; set; }
        public string tel { get; set; }
        public string tel_alt { get; set; }
        public string correo { get; set; }
        public string correo_alt { get; set; }
        public string callenum { get; set; }
        public string d_codigo { get; set; }
        public string id_asenta_cpcons { get; set; }
        public System.Guid usuario_ID { get; set; }
        public Nullable<System.DateTime> registro { get; set; }
    
        public virtual inf_usuario inf_usuario { get; set; }
    }
}
