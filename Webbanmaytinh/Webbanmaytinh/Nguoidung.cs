using System;

namespace Webbanmaytinh
{
    public class Nguoidung
    {
        public string Fullname { get; set; }
        public string Birthdate { get; set; }
        public string Gender { get; set; }
        public string UserClass { get; set; }

        public Nguoidung(string fullname, string birthdate, string gender, string userClass)
        {
            Fullname = fullname;
            Birthdate = birthdate;
            Gender = gender;
            UserClass = userClass;
        }
    }
}
