using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Website_clothe.Models;

namespace Website_clothe.Controllers
{
    public class productController : Controller
    {
        private Server_clothesEntities5 db = new Server_clothesEntities5();
        
        public ActionResult Index(int id)
        {
            var model = db.Sanphams.Where(x => x.Chitietdanhmuc == id).ToList();
            return View(model);
        }
        
        public ActionResult Productwithcdtion(int minprice, int maxprice)
        {
            var model = db.Sanphams.Where(x => x.Giaban >= minprice && x.Giaban <= maxprice).ToList();
            return PartialView("Productwithcdtion",model);
        }
    }
}