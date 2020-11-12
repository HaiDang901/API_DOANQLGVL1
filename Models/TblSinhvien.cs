using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblSinhvien
    {
        public string MaSv { get; set; }
        public string HoVaTen { get; set; }
        public DateTime? NgaySinh { get; set; }
        public byte? GioiTinh { get; set; }
        public string DanToc { get; set; }
        public string SoDinhDanh { get; set; }
        public string NoiCap { get; set; }
        public DateTime? NgayCap { get; set; }
        public string DienThoai { get; set; }
        public string Email { get; set; }
        public string MatKhau { get; set; }
        public int? Quyen { get; set; }
        public int? TrangThai { get; set; }
        public string Anh { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
