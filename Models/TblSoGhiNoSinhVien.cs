using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblSoGhiNoSinhVien
    {
        public long MaKhoanNo { get; set; }
        public string MaSv { get; set; }
        public string MaKhoanThu { get; set; }
        public string MaHp { get; set; }
        public decimal? SoTienCanThu { get; set; }
        public decimal? SoTienDaThu { get; set; }
        public DateTime? BatDau { get; set; }
        public DateTime? KetThuc { get; set; }
        public DateTime? NgayThu { get; set; }
        public int? NamTaiKhoa { get; set; }
        public int? TinhTrang { get; set; }
        public int? ChonSan { get; set; }
        public string GhiChu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
