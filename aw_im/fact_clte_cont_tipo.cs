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
    
    public partial class fact_clte_cont_tipo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public fact_clte_cont_tipo()
        {
            this.inf_clte_contacto = new HashSet<inf_clte_contacto>();
        }
    
        public int clte_cont_tipo_ID { get; set; }
        public string clte_cont_tipo_desc { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<inf_clte_contacto> inf_clte_contacto { get; set; }
    }
}
