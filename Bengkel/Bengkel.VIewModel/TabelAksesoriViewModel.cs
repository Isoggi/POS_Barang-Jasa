using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bengkel.ViewModel
{
    public class TabelAksesoriViewModel
    {
        public int Id { get; set; }

        public string KodeAksesori { get; set; }

        [Required]
        public string KodeMobil { get; set; }

        [Required]
        public string Deskripsi { get; set; }

        public decimal Harga { get; set; }

        public int Stok { get; set; }

        public bool IsActivated { get; set; }

        public string Created_By { get; set; }

        public DateTime? Created { get; set; }

        public string Modified_By { get; set; }

        public DateTime? Modified { get; set; }
    }
}
