using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplicationMVCDPOnlineIcerikUreticisi.Models
{
    public class User
    {

        [Required]
        [Display(Name = "KullanıcıAdı")]
        public string Username { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Şifre")]
        public string Password1 { get; set; }


    }
}