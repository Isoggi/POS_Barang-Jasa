namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TabelMobil")]
    public partial class TabelMobil
    {
        public TabelMobil()
        {
            TabelAksesoris = new HashSet<TabelAksesori>();
            TabelDataBiayaServis = new HashSet<TabelDataBiayaServi>();
            TabelOnderdils = new HashSet<TabelOnderdil>();
            TabelPelanggans = new HashSet<TabelPelanggan>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Key]
        [StringLength(12)]
        public string KodeMobil { get; set; }

        [Required]
        [StringLength(15)]
        public string JenisMobil { get; set; }

        [Required]
        [StringLength(20)]
        public string MerekMobil { get; set; }

        [Required]
        [StringLength(30)]
        public string NamaMobil { get; set; }

        public int TahunMobil { get; set; }

        public bool IsActived { get; set; }

        [StringLength(30)]
        public string Created_By { get; set; }

        public DateTime? Created { get; set; }

        [StringLength(30)]
        public string Modified_By { get; set; }

        public DateTime? Modified { get; set; }

        public virtual ICollection<TabelAksesori> TabelAksesoris { get; set; }

        public virtual ICollection<TabelDataBiayaServi> TabelDataBiayaServis { get; set; }

        public virtual ICollection<TabelOnderdil> TabelOnderdils { get; set; }

        public virtual ICollection<TabelPelanggan> TabelPelanggans { get; set; }
    }
}
