namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TabelGajiMontir")]
    public partial class TabelGajiMontir
    {
        [Key]
        [Column(Order = 0)]
        public int Id { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(5)]
        public string MontirId { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int GajiPeriodId { get; set; }

        [Key]
        [Column(Order = 3)]
        [StringLength(5)]
        public string KodeInsentifServis { get; set; }

        [Key]
        [Column(Order = 4)]
        [StringLength(5)]
        public string KodeInsentifBarang { get; set; }

        [Key]
        [Column(Order = 5, TypeName = "money")]
        public decimal GajiTetap { get; set; }

        [Key]
        [Column(Order = 6, TypeName = "money")]
        public decimal Total { get; set; }

        [Key]
        [Column(Order = 7)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Absen { get; set; }

        [StringLength(50)]
        public string Created_By { get; set; }

        public DateTime? Created { get; set; }

        [StringLength(50)]
        public string Modified_by { get; set; }

        public DateTime? Modified { get; set; }

        public virtual TabelInsentifServi TabelInsentifServi { get; set; }

        public virtual TabelMontir TabelMontir { get; set; }

        public virtual TabelPeriodeGaji TabelPeriodeGaji { get; set; }
    }
}
