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
    
    public partial class inf_proveedor
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public inf_proveedor()
        {
            this.inf_prov_contacto = new HashSet<inf_prov_contacto>();
        }
    
        public System.Guid prov_ID { get; set; }
        public Nullable<int> est_prov_ID { get; set; }
        public string cod_prov { get; set; }
        public Nullable<int> tipo_rfc_ID { get; set; }
        public string rfc { get; set; }
        public string razon_social { get; set; }
        public string telefono { get; set; }
        public string email { get; set; }
        public string callenum { get; set; }
        public string d_codigo { get; set; }
        public string id_asenta_cpcons { get; set; }
        public string comentarios { get; set; }
        public Nullable<System.DateTime> registro { get; set; }
        public System.Guid centro_ID { get; set; }
        public System.Guid usuario_ID { get; set; }
    
        public virtual fact_est_prov fact_est_prov { get; set; }
        public virtual fact_rfc_tipo fact_rfc_tipo { get; set; }
        public virtual inf_centro inf_centro { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<inf_prov_contacto> inf_prov_contacto { get; set; }
    }
}