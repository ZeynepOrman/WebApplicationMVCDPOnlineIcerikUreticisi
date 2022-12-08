using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using WebApplicationMVCDPOnlineIcerikUreticisi.Models;
using Microsoft.SqlServer.Server;
using System.Data.SqlClient;
using System.Data;
using Dapper;

namespace WebApplicationMVCDPOnlineIcerikUreticisi.Controllers
{
    [AllowAnonymous]
    public class AccountsController : Controller
    {

        // GET: Accounts
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]

        public ActionResult Login(User user)

        {
            IEnumerable<UserMaster> userList;
            using (SqlConnection baglanti = new SqlConnection(DP.connectionString))
            {
                baglanti.Open();
                userList = baglanti.Query<UserMaster>("SELECT * FROM UserMaster where UserId = @Username and Password1 = @Password1", user);

            }
            if(userList.Count() > 0)
            {
                FormsAuthentication.SetAuthCookie(user.Username, false);
                //Session["userId"] = user.Username;


                return RedirectToAction("Index", "Admin");
            }
            else
            {
                TempData["msg"] = "hatalı kullanıcı adı ya da şifre";

            }

            return View();
        }


        public ActionResult Logout()

        {
            Session.Clear();
            FormsAuthentication.SignOut();
            return View("Login");

        }
    }
}