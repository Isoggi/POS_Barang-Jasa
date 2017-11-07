namespace Bengkel.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TabelPeriodeGaji")]
    public partial class TabelPeriodeGaji
    {
        public TabelPeriodeGaji()
        {
            TabelInsentifBarangs = new HashSet<TabelInsentifBarang>();
            TabelInsentifServis = new HashSet<TabelInsentifServi>();
            TabelGajiMontirs = new HashSet<TabelGajiMontir>();
        }

        public int Id { get; set; }

        public int Tahun { get; set; }

        public int Bulan { get; set; }

        public DateTime TanggalMulai { get; set; }

        public DateTime TanggalAkhir { get; set; }

        public bool PeriodeBerjalan { get; set; }

        public virtual ICollection<TabelInsentifBarang> TabelInsentifBarangs { get; set; }

        public virtual ICollection<TabelInsentifServi> TabelInsentifServis { get; set; }

        public virtual ICollection<TabelGajiMontir> TabelGajiMontirs { get; set; }
    }
}
