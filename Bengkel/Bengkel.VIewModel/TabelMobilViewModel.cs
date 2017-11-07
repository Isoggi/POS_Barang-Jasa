using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bengkel.ViewModel
{
    public class TabelMobilViewModel
    {
        public int Id { get; set; }

        public string KodeMobil { get; set; }

        [Required]
        public string JenisMobil { get; set; }

        [Required]
        public string MerekMobil { get; set; }

        [Required]
        public string NamaMobil { get; set; }

        public int TahunMobil { get; set; }

        public bool IsActived { get; set; }

        public string Created_By { get; set; }

        public DateTime? Created { get; set; }

        public string Modified_By { get; set; }

        public DateTime? Modified { get; set; }

    }
}
