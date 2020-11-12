using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblChiTietPhieuThu
    {
        public long MaChiTietPhieuThu { get; set; }
        public int? MaPhieuThu { get; set; }
        public long? MaKhoanNo { get; set; }
        public decimal? SoTien { get; set; }
        public int? HoaDonDienTu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
