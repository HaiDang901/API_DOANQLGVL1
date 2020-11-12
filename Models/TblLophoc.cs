using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblLophoc
    {
        public string MaLop { get; set; }
        public string TenLop { get; set; }
        public string MaNganhHoc { get; set; }
        public string MaKhoaQuanLy { get; set; }
        public string NienKhoa { get; set; }
        public int? TrinhDo { get; set; }
        public int? He { get; set; }
        public DateTime? NgayNhapHoc { get; set; }
        public int? SiSo { get; set; }
        public int? TrangThai { get; set; }
        public string GhiChu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
