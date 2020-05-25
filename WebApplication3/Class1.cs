using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    public class Class1
    {
        private static Class1 class1 = new Class1();

        private Class1() { }

        public static Class1 getKullanıcıVerileri()
        {
            return class1;
        }



        public string Eposta = "oguz.arac@hotmail.com";

        public string parola = "123456";


    }
}