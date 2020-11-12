using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblKhoanThu
    {
        public string MaKhoanThu { get; set; }
        public string MoTa { get; set; }
        public int? TinhChat { get; set; }
        public int? HoaDonDienTu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
