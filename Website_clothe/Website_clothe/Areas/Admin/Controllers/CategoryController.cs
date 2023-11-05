using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Website_clothe.Models;
namespace Website_clothe.Areas.Admin.Controllers
{

    public class CategoryController : Controller
    {
       public Server_clothesEntities5 db = new Server_clothesEntities5();
        public ActionResult Index()
        {
            List < Danhmucsanpham > ketqua = db.Danhmucsanphams.ToList();
            return View(ketqua);
        }
        public ActionResult Add()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Add(string tendanhmuc,HttpPostedFileBase image)
        {
            if(tendanhmuc == null || image == null)
            {
                ViewBag.error = "Các trường không được bỏ trống";
                return View();
            }
            else
            {

                string filename = Path.GetFileName(image.FileName);
                string extension = Path.GetExtension(filename);
                string uniqueFileName = Path.GetFileNameWithoutExtension(filename) + "_" + Guid.NewGuid().ToString() + extension;
                string path = Path.Combine(Server.MapPath("~/Content/img"), uniqueFileName);
                image.SaveAs(path);

                //lưu dữ liệu xuống database
                var kq = new Danhmucsanpham
                {
                    Tendanhmuc = tendanhmuc,
                    HinhAnh = uniqueFileName
                };
                db.Danhmucsanphams.Add(kq);
                db.SaveChangesAsync();
            }
            return RedirectToAction("Index");
        }
        
        public ActionResult Edit(int id)
        {
            var kq = db.Danhmucsanphams.Where(p => p.Madanhmuc == id).FirstOrDefault();

            
            return View(kq);
        }
        [HttpPost]
        public ActionResult Edit(int id,string tendanhmuc, HttpPostedFileBase image)
        {
            if (tendanhmuc == null || image == null)
            {
                ViewBag.error = "Các trường không được bỏ trống";
                return View();
            }
            else
            {

                string filename = Path.GetFileName(image.FileName);
                string extension = Path.GetExtension(filename);
                string uniqueFileName = Path.GetFileNameWithoutExtension(filename) + "_" + Guid.NewGuid().ToString() + extension;
                string path = Path.Combine(Server.MapPath("~/Content/img"), uniqueFileName);
                image.SaveAs(path);

                //lưu dữ liệu xuống database
                var query = db.Danhmucsanphams.First(p => p.Madanhmuc == id);
                query.Tendanhmuc = tendanhmuc;
                query.HinhAnh = uniqueFileName;
                UpdateModel(query);
                db.SaveChangesAsync();
            }
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Delete (int id)
        {
            var query = db.Danhmucsanphams.Where(p => p.Madanhmuc == id).First();
            if (query != null)
            {
                db.Danhmucsanphams.Remove(query);
                db.SaveChangesAsync();
            }
            return RedirectToAction("Index");
        }
    }
}