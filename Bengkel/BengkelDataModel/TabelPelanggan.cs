namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TabelPelanggan")]
    public partial class TabelPelanggan
    {
        public TabelPelanggan()
        {
            TabelDataBiayaServis = new HashSet<TabelDataBiayaServi>();
            TabelDataPenjualanBarangs = new HashSet<TabelDataPenjualanBarang>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Required]
        [StringLength(30)]
        public string Nama { get; set; }

        [Key]
        [StringLength(10)]
        public string PelangganId { get; set; }

        [Required]
        [StringLength(12)]
        public string KodeMobil { get; set; }

        [Required]
        [StringLength(12)]
        public string NomorPolisi { get; set; }

        [Required]
        [StringLength(50)]
        public string Alamat { get; set; }

        public bool IsActivated { get; set; }

        [StringLength(50)]
        public string Created_By { get; set; }

        public DateTime? Created { get; set; }

        [StringLength(50)]
        public string Modified_By { get; set; }

        public DateTime? Modified { get; set; }

        public virtual ICollection<TabelDataBiayaServi> TabelDataBiayaServis { get; set; }

        public virtual ICollection<TabelDataPenjualanBarang> TabelDataPenjualanBarangs { get; set; }

        public virtual TabelMobil TabelMobil { get; set; }
    }
}
