using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblBoMonTrungTam
    {
        public string MaBmtt { get; set; }
        public string TenBmtt { get; set; }
        public string MaPk { get; set; }
        public int? SoLuongNhanSu { get; set; }
        public int? PhanLoai { get; set; }
        public string DiaChi { get; set; }
        public string DienThoai { get; set; }
        public string Email { get; set; }
        public string Website { get; set; }
        public string GhiChu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
