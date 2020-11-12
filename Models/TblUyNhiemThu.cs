using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblUyNhiemThu
    {
        public long MaUnt { get; set; }
        public string MaKhoanThu { get; set; }
        public string MaNganHang { get; set; }
        public DateTime? BatDau { get; set; }
        public DateTime? KetThuc { get; set; }
        public int? KichHoat { get; set; }
        public string GhiChu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
