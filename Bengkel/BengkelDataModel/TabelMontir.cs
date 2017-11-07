namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TabelMontir")]
    public partial class TabelMontir
    {
        public TabelMontir()
        {
            TabelDataBiayaServis = new HashSet<TabelDataBiayaServi>();
            TabelDataPenjualanBarangs = new HashSet<TabelDataPenjualanBarang>();
            TabelGajiMontirs = new HashSet<TabelGajiMontir>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }

        [Required]
        [StringLength(30)]
        public string NamaMontir { get; set; }

        [Key]
        [StringLength(5)]
        public string MontirId { get; set; }

        public DateTime TglGabung { get; set; }

        public DateTime? TglKeluar { get; set; }

        [Required]
        [StringLength(50)]
        public string Alamat { get; set; }

        public int? Absen { get; set; }

        public bool IsActived { get; set; }

        [StringLength(50)]
        public string Created_By { get; set; }

        public DateTime? Created { get; set; }

        [StringLength(50)]
        public string Modified_By { get; set; }

        public DateTime? Modified { get; set; }

        public virtual ICollection<TabelDataBiayaServi> TabelDataBiayaServis { get; set; }

        public virtual ICollection<TabelDataPenjualanBarang> TabelDataPenjualanBarangs { get; set; }

        public virtual ICollection<TabelGajiMontir> TabelGajiMontirs { get; set; }
    }
}
