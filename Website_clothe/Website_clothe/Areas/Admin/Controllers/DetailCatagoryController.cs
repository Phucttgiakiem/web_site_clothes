using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;
using System.Web;
using System.Web.Mvc;
using Website_clothe.Models;

namespace Website_clothe.Areas.Admin.Controllers
{
    
    public class DetailCatagoryController : Controller
    {
        public Server_clothesEntities5 db = new Server_clothesEntities5();
        // GET: Admin/DetailCatagory
        [HttpGet]
        public ActionResult Index( )
        {
            List<Danhmucsanpham> kq = db.Danhmucsanphams.OrderBy(c => c.Madanhmuc).Skip(1).ToList();
            List<Chitietdanhmuc> query = null;
            var categoryIds = kq.Select(c => c.Madanhmuc).ToList();
            query = db.Chitietdanhmucs.Where(p => p.Madanhmuc == categoryIds.FirstOrDefault()).ToList();

            

            ViewBag.kq = kq;
           
           return View(query);
        }
        public JsonResult loadtable(int id = 1)
        {
            List<Danhmucsanpham> kq = db.Danhmucsanphams.OrderBy(c => c.Madanhmuc).Skip(1).ToList();
            List<Chitietdanhmuc> query = null;
            var categoryIds = kq.Select(c => c.Madanhmuc ).ToList();
            if (id.Equals(1))
            {
                query = db.Chitietdanhmucs.Where(p => p.Madanhmuc == categoryIds.FirstOrDefault()).ToList();

            }
            else
            {
                query = db.Chitietdanhmucs.Where(p => p.Madanhmuc == id).ToList();
            }
            List<datajson> data = new List<datajson>();

            foreach(var item in query)
            {
                var kq1 = new datajson
                {
                    mactdm = item.ID_Chitietdanhmuc,
                    tenctdm = item.Tenchitietdanhmuc,
                    madmg = (int)item.Madanhmuc,
                };
                data.Add(kq1);
            }
           
             string json = JsonConvert.SerializeObject(data);
            return Json(json, JsonRequestBehavior.AllowGet);
        }
    }
    public class datajson
    {
        public int mactdm;
        public string tenctdm;
        public int madmg;
    }
}