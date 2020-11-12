using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblChuongTrinhDaoTaoChiTiet
    {
        public string MaCtdt { get; set; }
        public string MaHp { get; set; }
        public int? TinhTrang { get; set; }
        public int? HocKy { get; set; }
        public int? NamHoc { get; set; }
        public int? SoTt { get; set; }
        public string GhiChu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
