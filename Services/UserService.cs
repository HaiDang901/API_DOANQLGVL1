using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DOAN5.Services
{
    public interface IUserService
    {
        //TaiKhoan Authenticate(string username, string password);
        //IEnumerable<TaiKhoan> GetAll();
        //TaiKhoan GetById(int id);
    }

    public class UserService : IUserService
    {
        // users hardcoded for simplicity, store in a db with hashed passwords in production applications
        //private List<TaiKhoan> _taikhoan = new List<TaiKhoan>
        //{
        //    new TaiKhoan { MaTk = 1, Ten = "Đuc", Hoten = "Nguyễn Văn", TenDangNhap = "admin", MatKhau = "admin", Role = Role.Admin },
        //    new TaiKhoan { MaTk = 2, Ten = "Huệ", Hoten = "Nguyễn Thị Thanh", TenDangNhap = "user", MatKhau = "user", Role = Role.User },
        //    new TaiKhoan { MaTk = 3, Ten = "Thảo", Hoten = "Nguyễn Diệu", TenDangNhap = "user1", MatKhau = "user1", Role = Role.User },
        //    new TaiKhoan { MaTk = 4, Ten = "Khôi", Hoten = "Nguyễn Minh", TenDangNhap = "user2", MatKhau = "user2", Role = Role.User }
        //};

        //private readonly AppSettings _appSettings;

        //public UserService(IOptions<AppSettings> appSettings)
        //{
        //    _appSettings = appSettings.Value;
        //}

        //public TaiKhoan Authenticate(string username, string password)
        //{
        //    var user = _taikhoan.SingleOrDefault(x => x.TenDangNhap == username && x.MatKhau == password);

        //    return null if user not found
        //    if (user == null)
        //        return null;

        //    authentication successful so generate jwt token
        //    var tokenHandler = new JwtSecurityTokenHandler();
        //    var key = Encoding.ASCII.GetBytes(_appSettings.Secret);
        //    var tokenDescriptor = new SecurityTokenDescriptor
        //    {
        //        Subject = new ClaimsIdentity(new Claim[]
        //        {
        //            new Claim(ClaimTypes.Name, user.MaTk.ToString()),
        //            new Claim(ClaimTypes.Role, user.Role)
        //        }),
        //        Expires = DateTime.UtcNow.AddDays(7),
        //        SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
        //    };
        //    var token = tokenHandler.CreateToken(tokenDescriptor);
        //    user.Token = tokenHandler.WriteToken(token);

        //    return user.WithoutPassword();
        //}

        //public IEnumerable<TaiKhoan> GetAll()
        //{
        //    return _taikhoan.WithoutPasswords();
        //}

        //public TaiKhoan GetById(int id)
        //{
        //    var user = _taikhoan.FirstOrDefault(x => x.MaTk == id);
        //    return user.WithoutPassword();
        //}
    }
}