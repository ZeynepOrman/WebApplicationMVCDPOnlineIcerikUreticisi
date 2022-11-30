using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dapper;
using WebApplicationMVCDPOnlineIcerikUreticisi.Models;

namespace WebApplicationMVCDPOnlineIcerikUreticisi.Controllers
{
    public class MController : Controller
    {
        // GET: Musteri
        public ActionResult Index()
        {
            return View(DP.ReturnList<MusteriOnlineİcerik>("MusteriListele"));
        }

        [HttpGet]
        public ActionResult EkleYenile(int id = 0)
        {
            if (id == 0)

                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("MusteriNo", id);
                return View(DP.ReturnList<MusteriOnlineİcerik>("MusteriNoSirala", param).FirstOrDefault<MusteriOnlineİcerik>());

            }
        }


        [HttpPost]
        public ActionResult EkleYenile(MusteriOnlineİcerik musteri)

        {
            //view oluştururken edit olanı seçiyoruz
            DynamicParameters param = new DynamicParameters();
            param.Add("@MusteriNo", musteri.MusteriNo);
            param.Add("@MAdSoyad", musteri.MAdSoyad);
            param.Add("@MEmail", musteri.MEmail);

            DP.ExecuteWReturn("MusteriEkleYenile", param);
            return RedirectToAction("Index");

        }

        public ActionResult Delete(int id = 0)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@MusteriNo", id);
            DP.ExecuteWReturn("MSil", param);
            return RedirectToAction("Index");
        }
    }
}