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
        
        
        [HttpPost]
        public ActionResult FilterProducts(selectedConditions data)
        {
            List <Sanpham> model = new List<Sanpham>();
            if (data.minPrice != data.maxPrice)
            {
               // model = model.Where(x => x.Giaban >= data.minPrice && x.Giaban <= data.maxPrice).ToList();
               model = db.Sanphams.Where(x => x.Giaban >= data.minPrice && x.Giaban <= data.maxPrice).ToList();
            }
            else
            {
                model = db.Sanphams.ToList();
            }
            if (data.sizes != null)
            {
                string size = data.sizes;
                int maloai = int.Parse(size.Split('-')[0]);
                string masize = size.Split('-')[1];

                var item = db.Sizes.Where(x => x.ID_Loai == maloai && x.TenSize == masize).Select(x => x.ID_Size).ToList();
                var item2 = db.Bienthesanphams.Where(x => item.Contains((int)x.SizeID)).Select(x => x.ID_Sanpham).ToList();
                model = model.Where(x => item2.Contains(x.Masanpham)).ToList();
            }       
            return PartialView("Productwithcdtion", model);
        }
    }
    public class selectedConditions
    {
        public string sizes { get; set; } = "";
        public int minPrice { get; set; }
        public int maxPrice { get; set; }
    }
}