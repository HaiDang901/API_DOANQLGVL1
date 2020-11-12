using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblNganhDaoTao
    {
        public string MaNganh { get; set; }
        public string MaPk { get; set; }
        public string MaBmtt { get; set; }
        public string MaNganhTs { get; set; }
        public string TenNganh { get; set; }
        public double? SoTinChi { get; set; }
        public int? TrinhDo { get; set; }
        public int? SoThang { get; set; }
        public int? NamTs { get; set; }
        public string GhiChu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
        public int? He { get; set; }
    }
}
