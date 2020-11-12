using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblNganHang
    {
        public string MaNganHang { get; set; }
        public string Ten { get; set; }
        public string DiaChi { get; set; }
        public string MatKhau { get; set; }
        public int? KichHoat { get; set; }
        public string GhiChu { get; set; }
        public string NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
