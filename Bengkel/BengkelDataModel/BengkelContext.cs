namespace Bengkel.DataModel
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class BengkelContext : DbContext
    {
        public BengkelContext()
            : base("name=BengkelContext")
        {
        }

        public virtual DbSet<TabelAksesori> TabelAksesoris { get; set; }
        public virtual DbSet<TabelDataBiayaServi> TabelDataBiayaServis { get; set; }
        public virtual DbSet<TabelDataPenjualanBarang> TabelDataPenjualanBarangs { get; set; }
        public virtual DbSet<TabelInsentifBarang> TabelInsentifBarangs { get; set; }
        public virtual DbSet<TabelInsentifServi> TabelInsentifServis { get; set; }
        public virtual DbSet<TabelJasa> TabelJasas { get; set; }
        public virtual DbSet<TabelMobil> TabelMobils { get; set; }
        public virtual DbSet<TabelMontir> TabelMontirs { get; set; }
        public virtual DbSet<TabelOnderdil> TabelOnderdils { get; set; }
        public virtual DbSet<TabelPelanggan> TabelPelanggans { get; set; }
        public virtual DbSet<TabelPeriodeGaji> TabelPeriodeGajis { get; set; }
        public virtual DbSet<TabelBiayaServi> TabelBiayaServis { get; set; }
        public virtual DbSet<TabelGajiMontir> TabelGajiMontirs { get; set; }
        public virtual DbSet<TabelPenjualanBarang> TabelPenjualanBarangs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TabelAksesori>()
                .Property(e => e.KodeAksesori)
                .IsUnicode(false);

            modelBuilder.Entity<TabelAksesori>()
                .Property(e => e.KodeMobil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelAksesori>()
                .Property(e => e.Deskripsi)
                .IsUnicode(false);

            modelBuilder.Entity<TabelAksesori>()
                .Property(e => e.Harga)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TabelAksesori>()
                .Property(e => e.Created_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelAksesori>()
                .Property(e => e.Modified_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelAksesori>()
                .HasMany(e => e.TabelDataPenjualanBarangs)
                .WithRequired(e => e.TabelAksesori)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelDataBiayaServi>()
                .Property(e => e.KodeJasa)
                .IsUnicode(false);

            modelBuilder.Entity<TabelDataBiayaServi>()
                .Property(e => e.Referensi)
                .IsUnicode(false);

            modelBuilder.Entity<TabelDataBiayaServi>()
                .Property(e => e.KodeMobil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelDataBiayaServi>()
                .Property(e => e.MontirId)
                .IsUnicode(false);

            modelBuilder.Entity<TabelDataBiayaServi>()
                .Property(e => e.PelangganId)
                .IsUnicode(false);

            modelBuilder.Entity<TabelDataBiayaServi>()
                .Property(e => e.Harga)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TabelDataBiayaServi>()
                .HasMany(e => e.TabelBiayaServis)
                .WithRequired(e => e.TabelDataBiayaServi)
                .HasForeignKey(e => e.DataBiayaId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelDataPenjualanBarang>()
                .Property(e => e.KodeOnderdil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelDataPenjualanBarang>()
                .Property(e => e.KodeAksesori)
                .IsUnicode(false);

            modelBuilder.Entity<TabelDataPenjualanBarang>()
                .Property(e => e.Referensi)
                .IsUnicode(false);

            modelBuilder.Entity<TabelDataPenjualanBarang>()
                .Property(e => e.MontirId)
                .IsUnicode(false);

            modelBuilder.Entity<TabelDataPenjualanBarang>()
                .Property(e => e.PelangganId)
                .IsUnicode(false);

            modelBuilder.Entity<TabelDataPenjualanBarang>()
                .HasMany(e => e.TabelPenjualanBarangs)
                .WithRequired(e => e.TabelDataPenjualanBarang)
                .HasForeignKey(e => e.DataPenjualanId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelInsentifBarang>()
                .Property(e => e.KodeIntensifBarang)
                .IsUnicode(false);

            modelBuilder.Entity<TabelInsentifBarang>()
                .Property(e => e.KodeOnderdil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelInsentifBarang>()
                .Property(e => e.KodeAksesori)
                .IsUnicode(false);

            modelBuilder.Entity<TabelInsentifBarang>()
                .Property(e => e.insentif)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TabelInsentifServi>()
                .Property(e => e.KodeInsentifServis)
                .IsUnicode(false);

            modelBuilder.Entity<TabelInsentifServi>()
                .Property(e => e.KodeMobil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelInsentifServi>()
                .Property(e => e.KodeJasa)
                .IsUnicode(false);

            modelBuilder.Entity<TabelInsentifServi>()
                .Property(e => e.Insentif)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TabelInsentifServi>()
                .HasMany(e => e.TabelGajiMontirs)
                .WithRequired(e => e.TabelInsentifServi)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelJasa>()
                .Property(e => e.KodeJasa)
                .IsUnicode(false);

            modelBuilder.Entity<TabelJasa>()
                .Property(e => e.Deskripsi)
                .IsUnicode(false);

            modelBuilder.Entity<TabelJasa>()
                .Property(e => e.HargaJasa)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TabelJasa>()
                .Property(e => e.Created_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelJasa>()
                .Property(e => e.Modified_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelJasa>()
                .HasMany(e => e.TabelDataBiayaServis)
                .WithRequired(e => e.TabelJasa)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelMobil>()
                .Property(e => e.KodeMobil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelMobil>()
                .Property(e => e.JenisMobil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelMobil>()
                .Property(e => e.MerekMobil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelMobil>()
                .Property(e => e.NamaMobil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelMobil>()
                .Property(e => e.Created_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelMobil>()
                .Property(e => e.Modified_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelMobil>()
                .HasMany(e => e.TabelAksesoris)
                .WithRequired(e => e.TabelMobil)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelMobil>()
                .HasMany(e => e.TabelDataBiayaServis)
                .WithRequired(e => e.TabelMobil)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelMobil>()
                .HasMany(e => e.TabelOnderdils)
                .WithRequired(e => e.TabelMobil)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelMobil>()
                .HasMany(e => e.TabelPelanggans)
                .WithRequired(e => e.TabelMobil)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelMontir>()
                .Property(e => e.NamaMontir)
                .IsUnicode(false);

            modelBuilder.Entity<TabelMontir>()
                .Property(e => e.MontirId)
                .IsUnicode(false);

            modelBuilder.Entity<TabelMontir>()
                .Property(e => e.Alamat)
                .IsUnicode(false);

            modelBuilder.Entity<TabelMontir>()
                .Property(e => e.Created_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelMontir>()
                .Property(e => e.Modified_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelMontir>()
                .HasMany(e => e.TabelDataBiayaServis)
                .WithRequired(e => e.TabelMontir)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelMontir>()
                .HasMany(e => e.TabelDataPenjualanBarangs)
                .WithRequired(e => e.TabelMontir)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelMontir>()
                .HasMany(e => e.TabelGajiMontirs)
                .WithRequired(e => e.TabelMontir)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelOnderdil>()
                .Property(e => e.KodeOnderdil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelOnderdil>()
                .Property(e => e.KodeMobil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelOnderdil>()
                .Property(e => e.Deskripsi)
                .IsUnicode(false);

            modelBuilder.Entity<TabelOnderdil>()
                .Property(e => e.Harga)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TabelOnderdil>()
                .Property(e => e.Created_by)
                .IsUnicode(false);

            modelBuilder.Entity<TabelOnderdil>()
                .Property(e => e.Modified_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelOnderdil>()
                .HasMany(e => e.TabelDataPenjualanBarangs)
                .WithRequired(e => e.TabelOnderdil)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelPelanggan>()
                .Property(e => e.Nama)
                .IsUnicode(false);

            modelBuilder.Entity<TabelPelanggan>()
                .Property(e => e.PelangganId)
                .IsUnicode(false);

            modelBuilder.Entity<TabelPelanggan>()
                .Property(e => e.KodeMobil)
                .IsUnicode(false);

            modelBuilder.Entity<TabelPelanggan>()
                .Property(e => e.NomorPolisi)
                .IsUnicode(false);

            modelBuilder.Entity<TabelPelanggan>()
                .Property(e => e.Alamat)
                .IsUnicode(false);

            modelBuilder.Entity<TabelPelanggan>()
                .Property(e => e.Created_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelPelanggan>()
                .Property(e => e.Modified_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelPelanggan>()
                .HasMany(e => e.TabelDataBiayaServis)
                .WithRequired(e => e.TabelPelanggan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelPelanggan>()
                .HasMany(e => e.TabelDataPenjualanBarangs)
                .WithRequired(e => e.TabelPelanggan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelPeriodeGaji>()
                .HasMany(e => e.TabelInsentifBarangs)
                .WithRequired(e => e.TabelPeriodeGaji)
                .HasForeignKey(e => e.GajiPeriodId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelPeriodeGaji>()
                .HasMany(e => e.TabelInsentifServis)
                .WithRequired(e => e.TabelPeriodeGaji)
                .HasForeignKey(e => e.PeriodeGajiId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelPeriodeGaji>()
                .HasMany(e => e.TabelGajiMontirs)
                .WithRequired(e => e.TabelPeriodeGaji)
                .HasForeignKey(e => e.GajiPeriodId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TabelBiayaServi>()
                .Property(e => e.Jumlah)
                .HasPrecision(18, 3);

            modelBuilder.Entity<TabelBiayaServi>()
                .Property(e => e.Total)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TabelGajiMontir>()
                .Property(e => e.MontirId)
                .IsUnicode(false);

            modelBuilder.Entity<TabelGajiMontir>()
                .Property(e => e.KodeInsentifServis)
                .IsUnicode(false);

            modelBuilder.Entity<TabelGajiMontir>()
                .Property(e => e.KodeInsentifBarang)
                .IsUnicode(false);

            modelBuilder.Entity<TabelGajiMontir>()
                .Property(e => e.GajiTetap)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TabelGajiMontir>()
                .Property(e => e.Total)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TabelGajiMontir>()
                .Property(e => e.Created_By)
                .IsUnicode(false);

            modelBuilder.Entity<TabelGajiMontir>()
                .Property(e => e.Modified_by)
                .IsUnicode(false);

            modelBuilder.Entity<TabelPenjualanBarang>()
                .Property(e => e.Jumlah)
                .HasPrecision(18, 3);

            modelBuilder.Entity<TabelPenjualanBarang>()
                .Property(e => e.Total)
                .HasPrecision(19, 4);
        }
    }
}
