using Bengkel.ViewModel;
using BengkelDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Bengkel.MVC.Controllers
{
    public class TabelMobilController : Controller
    {
        // GET: TabelMobil
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult List()
        {
            return View(TabelMobilDataAccess.GetAll());
        }

        public ActionResult Create()
        {
            return View();
        }

        public ActionResult Edit(int id)
        {
            return View(TabelMobilDataAccess.GetById(id));
        }

        [HttpPost]

        public ActionResult Create(TabelMobilViewModel model)
        {
            return Created(model);
        }

        [HttpPost]

        public ActionResult Edit(TabelMobilViewModel model)
        {
            return Created(model);
        }

        public ActionResult Created(TabelMobilViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (TabelMobilDataAccess.Update(model))
                    {
                        return Json(new { success = true, message = "Success" }, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        return Json(new { success = false, message = TabelMobilDataAccess.Message }, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    return Json(new { success = false, message = "Please full fill required fields!" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}