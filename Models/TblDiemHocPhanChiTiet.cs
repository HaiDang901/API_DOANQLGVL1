using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblDiemHocPhanChiTiet
    {
        public int ThuTu { get; set; }
        public string MaSv { get; set; }
        public string MaHp { get; set; }
        public double? Diem { get; set; }
        public int? HocKy { get; set; }
        public int? NamHoc { get; set; }
        public int? TinhTrang { get; set; }
        public int? KhaoSat { get; set; }
        public string DiemThanhPhan { get; set; }
        public string NguoiDay { get; set; }
        public string GhiChu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
