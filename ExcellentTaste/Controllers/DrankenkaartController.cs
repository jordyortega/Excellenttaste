using ExcellentTaste.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ExcellentTaste.Controllers
{
    public class DrankenkaartController : Controller
    {
        private Entities db = new Entities();
        // GET: Dranken
        public ActionResult Index()
        {
            var consumpties = db.Consumptie.Where(d=>d.consumptieCode=="drk" || d.consumptieCode == "hap");
            return View(consumpties);
        }
    }
}