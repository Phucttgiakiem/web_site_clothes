using PagedList;
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
            TempData["sanphams"] = db.Sanphams.Where(x => x.Chitietdanhmuc == id).ToList();
            
            return View();
        }
        public ActionResult Detailproduct(int id) {
            var model = db.Sanphams.Where(x => x.Masanpham == id).ToList();
            return View(model);
        
        }
        [HttpPost]        
        public ActionResult Productwithchtion(selectedConditions data)
        {
            List<Sanpham> model = null;
                if (data.sizes != null)
                {
                    string[] kq = null;
                        kq = data.sizes.Split('-');
                    string tensize = kq[1];
                    int maloai = int.Parse(kq[0]);
                    var sizeid = db.Sizes.Where(x => x.TenSize == tensize && x.ID_Loai == maloai).Select(x => x.ID_Size).FirstOrDefault();

                    var item = db.Bienthesanphams.Where(x => x.SizeID == sizeid).Select(x => x.ID_Sanpham).ToList();
                         model = db.Sanphams.Where(x => item.Contains(x.Masanpham)).ToList();
                    
                }
                else
                {
                    model = db.Sanphams.ToList();
                    
                }
                if (data.minPrice != data.maxPrice)
                {
                    model = model.Where(x => x.Giaban >= data.minPrice && x.Giaban <= data.maxPrice).ToList();
                }
            return PartialView("Productwithcdtion", model);
        }
        public ActionResult Findproductwithbrand(int idthuonghieu)
        {
            TempData["sanphams"] = db.Sanphams.Where(x => x.Mathuonghieu == idthuonghieu).ToList();
            return View("Index");
        }
        
        public ActionResult Findproductwithtextbox(string findpd)
        {
            TempData["sanphams"] = db.Sanphams.Where(x => x.Tensanpham.Contains(findpd)).ToList();
            return View("~/Views/product/Index.cshtml");
        }
    }
}