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
        public string hash(string password) //input is user entered password
        {
            byte[] data = System.Text.Encoding.UTF8.GetBytes(password); //get password and place in bytes array

            SHA1 sha1 = new SHA1CryptoServiceProvider(); //new hash provider

            byte[] hashData = sha1.ComputeHash(data);

            string hashValue = System.Text.Encoding.UTF8.GetString(hashData);

            return hashValue; //return the password hashed value to save in Member.xml and Staff.xml
        }

	}
}
