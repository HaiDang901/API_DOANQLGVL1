using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblDkgiangDay
    {
        public long MaDkgd { get; set; }
        public string MaCbgv { get; set; }
        public string MaHp { get; set; }
        public DateTime? NgayDk { get; set; }
        public string GhiChu { get; set; }
        public int? Status { get; set; }
        public string Dp1 { get; set; }
    }
}
