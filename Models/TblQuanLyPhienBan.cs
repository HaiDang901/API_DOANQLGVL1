using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblQuanLyPhienBan
    {
        public string PhienBan { get; set; }
        public int? KichHoat { get; set; }
        public DateTime? NgayPhatHanh { get; set; }
        public DateTime? NgayDung { get; set; }
        public string GhiChu { get; set; }
    }
}
