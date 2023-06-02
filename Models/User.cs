using Microsoft.AspNetCore.Mvc;

namespace TransBuc.Models
{
    public class User
    { 
        public string lastName { get; set; }
        public string firstName { get; set; }
        public string  email { get; set; }
        // public string password { get; set; }
        // Password should not be accesible from exterior
        public string phone { get; set; }
        public string judet { get; set; }
        public string localitate { get; set; }
        public string stret { get; set; }
        public string streetNo { get; set; }
        public string floor { get; set; }
        public string apartment { get; set; }

        private string _hasedPassword;

        public User(User u)
        {
            lastName = u.lastName;
            firstName = u.firstName;
            email = u.email;
            phone = u.phone;
            judet = u.judet;
            localitate = u.localitate;
            stret = u.stret;    
            streetNo = u.streetNo;
            floor = u.floor;
            apartment = u.apartment;
        }

        public User(string lastName, string firstName, string email, string phone, string judet, string localitate, string stret, string streetNo, string floor, string apartment)
        {
            this.lastName = lastName;
            this.firstName = firstName;
            this.email = email;
            this.phone = phone;
            this.judet = judet;
            this.localitate = localitate;
            this.stret = stret;
            this.streetNo = streetNo;
            this.floor = floor;
            this.apartment = apartment;
        }
    }
}
