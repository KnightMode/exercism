﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace luhn
{
    public class Luhn
    {
        public Luhn(int i)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<int> Addends { get; private set; }

        public int CheckDigit { get; private set; }
        public int Checksum { get; private set; }
        public bool Valid { get; private set; }

        public static int Create(int i)
        {
            throw new NotImplementedException();
        }
    }
}
