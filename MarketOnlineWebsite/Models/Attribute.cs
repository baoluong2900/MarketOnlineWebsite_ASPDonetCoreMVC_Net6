﻿using System;
using System.Collections.Generic;

namespace MarketOnlineWebsite.Models
{
    public partial class Attribute
    {
        public Attribute()
        {
            AttributesPrices = new HashSet<AttributesPrice>();
        }

        public int AttributeId { get; set; }
        public string? Name { get; set; }
        public int? UserId { get; set; }

        public virtual ICollection<AttributesPrice> AttributesPrices { get; set; }
    }
}
