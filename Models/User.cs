using IdentityServer4.Models;
using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class User
    {
        public User()
        {
            RefreshTokens = new HashSet<RefreshToken>();
        }
        public string UserId { get; set; }
        public string Hoten { get; set; }
        public DateTime? Ngaysinh { get; set; }
        public string Diachi { get; set; }
        public string Gioitinh { get; set; }
        public string Email { get; set; }
        public string Taikhoan { get; set; }
        public string Matkhau { get; set; }
        public string Role { get; set; }
        public string ImageUrl { get; set; }

        public virtual ICollection<RefreshToken> RefreshTokens { get; set; }
    }
}
