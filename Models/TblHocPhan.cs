using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblHocPhan
    {
        public string MaHp { get; set; }
        public string MaPk { get; set; }
        public string MaBmtt { get; set; }
        public string TenHocPhan { get; set; }
        public int? HocKy { get; set; }
        public int? TinhChat { get; set; }
        public double? SoTinChi { get; set; }
        public double? SoTinChiLt { get; set; }
        public double? SoTinChiTh { get; set; }
        public double? HeSo { get; set; }
        public int? SoThuTu { get; set; }
        public int? TinhTrungBinh { get; set; }
        public int? TotNghiep { get; set; }
        public string DiemThanhPhan { get; set; }
        public string NganhApDung { get; set; }
        public string GhiChu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
