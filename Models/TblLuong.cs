using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblLuong
    {
        public long MaLuong { get; set; }
        public long? MaBac { get; set; }
        public int? MucLuong { get; set; }
        public int? LuongCb { get; set; }
        public int? LuongPc { get; set; }
        public string NgayNhan { get; set; }
        public DateTime? NgayTang { get; set; }
        public int? Status { get; set; }
        public string Dp1 { get; set; }
    }
}
