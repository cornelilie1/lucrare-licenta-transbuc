using Microsoft.AspNetCore.Mvc;

namespace TransBuc.Models
{
    public class Passenger : User
    {

        public  bool status { get; set; }


        public Passenger(User user, bool status)
            :base(user)
        {
            this.status = status; 
        }
    }
}
