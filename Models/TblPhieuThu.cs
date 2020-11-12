using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblPhieuThu
    {
        public long MaPhieuThu { get; set; }
        public int? SoHieu { get; set; }
        public int? NamTaiKhoa { get; set; }
        public string MaGiaoDich { get; set; }
        public DateTime? Ngay { get; set; }
        public string MoTa { get; set; }
        public string NguoiThu { get; set; }
        public string MaNguoiThu { get; set; }
        public decimal? TongTien { get; set; }
        public int? HoaDonDienTu { get; set; }
        public string GhiChu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
