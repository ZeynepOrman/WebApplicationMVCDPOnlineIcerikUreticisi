using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dapper;
using WebApplicationMVCDPOnlineIcerikUreticisi.Models;

namespace WebApplicationMVCDPOnlineIcerikUreticisi.Controllers
{
    public class OController : Controller
    {
        // GET: Online İçerik
        public ActionResult Index()
        {
            return View(DP.ReturnList<Onlineİcerik>("İcerikListele"));
        }

        [HttpGet]
        public ActionResult EkleYenile(int id = 0)
        {
            if (id == 0)

                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("İcerikNo", id);
                return View(DP.ReturnList<Onlineİcerik>("İcerikNoSirala", param).FirstOrDefault<Onlineİcerik>());

            }
        }


        [HttpPost]
        public ActionResult EkleYenile(Onlineİcerik icerik)

        {
            //view oluştururken edit olanı seçiyoruz
            DynamicParameters param = new DynamicParameters();
            param.Add("@İcerikNo", icerik.İcerikNo);
            param.Add("@İcerikAdi", icerik.İcerikAdi);
            param.Add("@İcerikTuru", icerik.İcerikTuru);

            DP.ExecuteWReturn("İcerikEkleYenile", param);
            return RedirectToAction("Index");

        }

        public ActionResult Delete(int id = 0)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@İcerikNo", id);
            DP.ExecuteWReturn("İSil", param);
            return RedirectToAction("Index");
        }
    }
}