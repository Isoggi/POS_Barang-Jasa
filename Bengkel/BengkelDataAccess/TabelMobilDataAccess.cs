using System;
using Bengkel.ViewModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bengkel.DataModel;

namespace BengkelDataAccess
{
    public class TabelMobilDataAccess
    {
        public static string Message = string.Empty;
        public static List<TabelMobilViewModel> GetAll()
        {
            List<TabelMobilViewModel> result = new List<TabelMobilViewModel>();
            using (var db = new BengkelContext())
            {
                result = (from Mo in db.TabelMobils
                          select new TabelMobilViewModel
                          {
                              Id = Mo.Id,
                              KodeMobil = Mo.KodeMobil,
                              JenisMobil = Mo.JenisMobil,
                              MerekMobil = Mo.MerekMobil,
                              NamaMobil = Mo.NamaMobil,
                              TahunMobil = Mo.TahunMobil,
                              IsActived = Mo.IsActived
                              //Created_By = Mo.Created_By,
                              //Created = Mo.Created,
                              //Modified_By = Mo.Modified_By,
                              //Modified = Mo.Modified
                          }).ToList();
            }
            return result;
        }

        public static bool Update(TabelMobilViewModel model)
        {
            bool result = true;
            try
            {
                using (var db = new BengkelContext())
                {
                    if (model.Id == 0)
                    {
                        TabelMobil TMobil = new TabelMobil();
                        TMobil.KodeMobil = model.KodeMobil;
                        TMobil.JenisMobil = model.JenisMobil;
                        TMobil.MerekMobil = model.MerekMobil;
                        TMobil.NamaMobil = model.NamaMobil;
                        TMobil.TahunMobil = model.TahunMobil;
                        TMobil.IsActived = model.IsActived;
                        //TMobil.Created_By = model.Created_By;
                        //TMobil.Created = model.Created;
                        //TMobil.Modified_By = model.Modified_By;
                        //TMobil.Modified = model.Modified;
                        db.TabelMobils.Add(TMobil);
                        db.SaveChanges();
                    }
                    else
                    {
                        TabelMobil TMobil = db.TabelMobils.Where(o => o.Id == model.Id).FirstOrDefault();
                        if (TMobil != null)
                        {
                            TMobil.KodeMobil = model.KodeMobil;
                            TMobil.JenisMobil = model.JenisMobil;
                            TMobil.MerekMobil = model.MerekMobil;
                            TMobil.NamaMobil = model.NamaMobil;
                            TMobil.TahunMobil = model.TahunMobil;
                            TMobil.IsActived = model.IsActived;
                            db.SaveChanges();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Message = ex.Message;
                result = false;
            }
            return result;
        }
        public static TabelMobilViewModel GetById(int id)
        {
            TabelMobilViewModel result = new TabelMobilViewModel();
            using (var db = new BengkelContext())
            {
                result = (from Mo in db.TabelMobils
                          where Mo.Id == id
                          select new TabelMobilViewModel
                          {
                              Id = Mo.Id,
                              KodeMobil = Mo.KodeMobil,
                              JenisMobil = Mo.JenisMobil,
                              MerekMobil = Mo.MerekMobil,
                              NamaMobil = Mo.NamaMobil,
                              TahunMobil = Mo.TahunMobil,
                              IsActived = Mo.IsActived
                              //Created_By = Mo.Created_By,
                              //Created = Mo.Created,
                              //Modified_By = Mo.Modified_By,
                              //Modified = Mo.Modified
                          }).FirstOrDefault();
            }
            return result;
        }
    }
}
