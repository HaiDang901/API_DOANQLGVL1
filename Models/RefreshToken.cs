using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DOAN5.Models
{
    public partial class RefreshToken
    {
        public int TokenId { get; set; }
        public string UserId { get; set; }
        public string Token { get; set; }
        public DateTime ExpiryDate { get; set; }

        public virtual User User { get; set; }
    }
}
