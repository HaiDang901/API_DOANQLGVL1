using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblDinhMucHocPhi
    {
        public long MaDmhp { get; set; }
        public string MaLop { get; set; }
        public string MoTa { get; set; }
        public decimal? HocPhiThang { get; set; }
        public decimal? HocPhiHocKy { get; set; }
        public decimal? HocPhiTinChi { get; set; }
        public decimal? HocPhiTinChiLt { get; set; }
        public decimal? HocPhiTinChiTh { get; set; }
        public int? HocKy { get; set; }
        public int? NamHoc { get; set; }
        public int? TrangThai { get; set; }
        public int? TinhChat { get; set; }
        public DateTime? NgayBatDau { get; set; }
        public DateTime? NgayKetThuc { get; set; }
        public string QuyetDinh { get; set; }
        public string GhiChu { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
        public string MaKhoanThu { get; set; }
    }
}
