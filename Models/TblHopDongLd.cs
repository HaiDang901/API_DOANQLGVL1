using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblHopDongLd
    {
        public long MaHd { get; set; }
        public string MaCbgv { get; set; }
        public string LoaiHd { get; set; }
        public DateTime? TuNgay { get; set; }
        public DateTime? DenNgay { get; set; }
        public string GhiChu { get; set; }
        public int? Status { get; set; }
        public string Dp1 { get; set; }
    }
}
