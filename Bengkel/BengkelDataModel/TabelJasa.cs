namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TabelJasa")]
    public partial class TabelJasa
    {
        public TabelJasa()
        {
            TabelDataBiayaServis = new HashSet<TabelDataBiayaServi>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Key]
        [StringLength(5)]
        public string KodeJasa { get; set; }

        [Required]
        [StringLength(30)]
        public string Deskripsi { get; set; }

        [Column(TypeName = "money")]
        public decimal HargaJasa { get; set; }

        public bool IsActivated { get; set; }

        [StringLength(50)]
        public string Created_By { get; set; }

        public DateTime? Created { get; set; }

        [StringLength(50)]
        public string Modified_By { get; set; }

        public DateTime? Modified { get; set; }

        public virtual ICollection<TabelDataBiayaServi> TabelDataBiayaServis { get; set; }
    }
}
