using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblNgachCongChuc
    {
        public long MaNgach { get; set; }
        public string MaSo { get; set; }
        public string TenNgach { get; set; }
        public string MoTa { get; set; }
        public int? Status { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string GhiChu { get; set; }
    }
}
