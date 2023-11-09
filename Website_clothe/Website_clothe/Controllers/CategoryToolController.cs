using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Website_clothe.Models;

namespace Website_clothe.Controllers
{
    public class CategoryToolController : Controller
    {
        private Server_clothesEntities5 db = new Server_clothesEntities5();
        // GET: CategoryTool
        
        public ActionResult Index()
        {

            return View();
        }
        [HttpGet]
        [ChildActionOnly]
        public ActionResult CatagoryTool()
        {
            var items = db.Danhmucsanphams.ToList();
            ViewBag.ctdm = db.Chitietdanhmucs.ToList();
            ViewBag.loai = db.Loais.ToList();
            return PartialView("Category", items);
        }
        public ActionResult productwithdetailcatagory(int idct)
        {
            TempData["sanphams"] = db.Sanphams.Where(x => x.Chitietdanhmuc == idct).ToList();
            return View("~/Views/product/Index.cshtml");
        }
    }
}