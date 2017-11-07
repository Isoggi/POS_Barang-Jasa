namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class TabelDataBiayaServi
    {
        public TabelDataBiayaServi()
        {
            TabelBiayaServis = new HashSet<TabelBiayaServi>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(5)]
        public string KodeJasa { get; set; }

        [Required]
        [StringLength(15)]
        public string Referensi { get; set; }

        [Required]
        [StringLength(12)]
        public string KodeMobil { get; set; }

        [Required]
        [StringLength(5)]
        public string MontirId { get; set; }

        [Required]
        [StringLength(10)]
        public string PelangganId { get; set; }

        [Column(TypeName = "money")]
        public decimal Harga { get; set; }

        public DateTime TanggalServis { get; set; }

        public virtual ICollection<TabelBiayaServi> TabelBiayaServis { get; set; }

        public virtual TabelJasa TabelJasa { get; set; }

        public virtual TabelMobil TabelMobil { get; set; }

        public virtual TabelMontir TabelMontir { get; set; }

        public virtual TabelPelanggan TabelPelanggan { get; set; }
    }
}
