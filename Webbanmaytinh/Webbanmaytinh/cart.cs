﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Webbanmaytinh
{
    public class cart : Product
    {
        public int quantity { get; set; }
        public cart(string id, string name, decimal price, string images, int quantity)
        {
            this.Id = id;
            this.Name = name;
            this.Price = price;
            this.Images = images;
            this.quantity = quantity;
        }
    }
}