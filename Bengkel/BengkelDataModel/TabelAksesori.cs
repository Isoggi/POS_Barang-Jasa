namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TabelAksesori")]
    public partial class TabelAksesori
    {
        public TabelAksesori()
        {
            TabelDataPenjualanBarangs = new HashSet<TabelDataPenjualanBarang>();
            TabelInsentifBarangs = new HashSet<TabelInsentifBarang>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Key]
        [StringLength(5)]
        public string KodeAksesori { get; set; }

        [Required]
        [StringLength(12)]
        public string KodeMobil { get; set; }

        [Required]
        [StringLength(30)]
        public string Deskripsi { get; set; }

        [Column(TypeName = "money")]
        public decimal Harga { get; set; }

        public int Stok { get; set; }

        public bool IsActivated { get; set; }

        [StringLength(50)]
        public string Created_By { get; set; }

        public DateTime? Created { get; set; }

        [StringLength(50)]
        public string Modified_By { get; set; }

        public DateTime? Modified { get; set; }

        public virtual TabelMobil TabelMobil { get; set; }

        public virtual ICollection<TabelDataPenjualanBarang> TabelDataPenjualanBarangs { get; set; }

        public virtual ICollection<TabelInsentifBarang> TabelInsentifBarangs { get; set; }
    }
}
