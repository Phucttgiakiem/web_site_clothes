using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;

namespace Website_clothe.Models
{
    public class selectedConditions
    {
        public string sizes { get; set; } = "";
        public int minPrice { get; set; }
        public int maxPrice { get; set; }
    }
}