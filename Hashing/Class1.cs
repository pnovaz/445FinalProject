using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;

namespace Hashing
{
    public class hashing
    {
        public string hash(string password)
        {
            byte[] data = System.Text.Encoding.UTF8.GetBytes(password);

            SHA1 sha1 = new SHA1CryptoServiceProvider();

            byte[] hashedData = sha1.ComputeHash(data);

            string hashValue = System.Text.Encoding.UTF8.GetString(hashedData);

            return hashValue;
        }

	}
}
