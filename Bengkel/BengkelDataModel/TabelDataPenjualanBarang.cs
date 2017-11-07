namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TabelDataPenjualanBarang")]
    public partial class TabelDataPenjualanBarang
    {
        public TabelDataPenjualanBarang()
        {
            TabelPenjualanBarangs = new HashSet<TabelPenjualanBarang>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(5)]
        public string KodeOnderdil { get; set; }

        [Required]
        [StringLength(5)]
        public string KodeAksesori { get; set; }

        [Required]
        [StringLength(15)]
        public string Referensi { get; set; }

        [Required]
        [StringLength(5)]
        public string MontirId { get; set; }

        [Required]
        [StringLength(10)]
        public string PelangganId { get; set; }

        public DateTime TanggalPenjualan { get; set; }

        public virtual TabelAksesori TabelAksesori { get; set; }

        public virtual TabelMontir TabelMontir { get; set; }

        public virtual TabelOnderdil TabelOnderdil { get; set; }

        public virtual TabelPelanggan TabelPelanggan { get; set; }

        public virtual ICollection<TabelPenjualanBarang> TabelPenjualanBarangs { get; set; }
    }
}
