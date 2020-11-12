using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblSinhVienLopHoc
    {
        public long MaSvlh { get; set; }
        public string MaSv { get; set; }
        public string MaLop { get; set; }
        public int? HoatDong { get; set; }
        public DateTime? NgayVaoLop { get; set; }
        public string GhiChu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
