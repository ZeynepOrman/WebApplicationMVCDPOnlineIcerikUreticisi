using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplicationMVCDPOnlineIcerikUreticisi.Models
{
    public class UserMaster
    {
        public int Uid1 { get; set; }
        public string Name1 { get; set; }
        public string UserId { get; set; }
        public string Password1 { get; set; }
        public bool isActive { get; set; }
        public int Role { get; set; }
        public DateTime Createdon { get; set; }

    }
}