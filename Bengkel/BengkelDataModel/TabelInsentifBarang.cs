namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TabelInsentifBarang")]
    public partial class TabelInsentifBarang
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Key]
        [StringLength(5)]
        public string KodeIntensifBarang { get; set; }

        public int GajiPeriodId { get; set; }

        [StringLength(5)]
        public string KodeOnderdil { get; set; }

        [StringLength(5)]
        public string KodeAksesori { get; set; }

        [Column(TypeName = "money")]
        public decimal insentif { get; set; }

        public virtual TabelAksesori TabelAksesori { get; set; }

        public virtual TabelOnderdil TabelOnderdil { get; set; }

        public virtual TabelPeriodeGaji TabelPeriodeGaji { get; set; }
    }
}
