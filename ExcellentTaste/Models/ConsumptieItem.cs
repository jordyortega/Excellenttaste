//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ExcellentTaste.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ConsumptieItem
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ConsumptieItem()
        {
            this.Bestelling = new HashSet<Bestelling>();
        }
    
        public string consumptieItemCode { get; set; }
        public string consumptieGroepCode { get; set; }
        public string consumptieItemNaam { get; set; }
        public decimal prijs { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Bestelling> Bestelling { get; set; }
        public virtual ConsumptieGroep ConsumptieGroep { get; set; }
    }
}
