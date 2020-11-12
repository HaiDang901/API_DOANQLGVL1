using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblBacLuong
    {
        public long MaBac { get; set; }
        public string TenBac { get; set; }
        public double? HeSoBacLg { get; set; }
        public int? Status { get; set; }
        public string NhomBac { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
    }
}
