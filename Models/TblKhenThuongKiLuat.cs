using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblKhenThuongKiLuat
    {
        public long MaKtkl { get; set; }
        public string TenKtkl { get; set; }
        public string LyDo { get; set; }
        public DateTime? NgayKt { get; set; }
        public string HinhThuc { get; set; }
        public string GhiChu { get; set; }
        public int? Status { get; set; }
        public string Dp1 { get; set; }
    }
}
