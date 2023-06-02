namespace TransBuc.Models
{
    public class CheckStaff : User  
    {
        public bool status { get; set; }

        public CheckStaff(User user, bool status):base(user)
        {
            status = status;
        }
    }

  
}
