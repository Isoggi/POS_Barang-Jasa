namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TabelPenjualanBarang")]
    public partial class TabelPenjualanBarang
    {
        [Key]
        [Column(Order = 0)]
        public int Id { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int DataPenjualanId { get; set; }

        [Key]
        [Column(Order = 2)]
        public decimal Jumlah { get; set; }

        [Key]
        [Column(Order = 3, TypeName = "money")]
        public decimal Total { get; set; }

        public virtual TabelDataPenjualanBarang TabelDataPenjualanBarang { get; set; }
    }
}
