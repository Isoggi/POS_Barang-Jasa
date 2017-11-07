namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class TabelInsentifServi
    {
        public TabelInsentifServi()
        {
            TabelGajiMontirs = new HashSet<TabelGajiMontir>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Key]
        [StringLength(5)]
        public string KodeInsentifServis { get; set; }

        public int PeriodeGajiId { get; set; }

        [Required]
        [StringLength(12)]
        public string KodeMobil { get; set; }

        [Required]
        [StringLength(12)]
        public string KodeJasa { get; set; }

        [Column(TypeName = "money")]
        public decimal Insentif { get; set; }

        public virtual ICollection<TabelGajiMontir> TabelGajiMontirs { get; set; }

        public virtual TabelPeriodeGaji TabelPeriodeGaji { get; set; }
    }
}
