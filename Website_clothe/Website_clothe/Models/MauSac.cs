//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Website_clothe.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class MauSac
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MauSac()
        {
            this.Bienthesanphams = new HashSet<Bienthesanpham>();
        }
    
        public int ID_Mau { get; set; }
        public string Tenmau { get; set; }
        public Nullable<int> ID_Loai { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Bienthesanpham> Bienthesanphams { get; set; }
    }
}
