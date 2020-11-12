using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblCanBoGiangVien
    {
        public string MaCbgv { get; set; }
        public string MaPk { get; set; }
        public string MaBmtt { get; set; }
        public long? MaNgach { get; set; }
        public long? MaBac { get; set; }
        public long? MaTdhv { get; set; }
        public long? MaKtkl { get; set; }
        public string HoVaTen { get; set; }
        public string Image { get; set; }
        public DateTime? NgaySinh { get; set; }
        public int? GioiTinh { get; set; }
        public string MatKhau { get; set; }
        public string DienThoai { get; set; }
        public string Email { get; set; }
        public string ChucDanh { get; set; }
        public string SoTaiKhoan { get; set; }
        public int? Status { get; set; }
        public int? Quyen { get; set; }
        public string QueQuan { get; set; }
        public string DanToc { get; set; }
        public string TonGiao { get; set; }
        public string TrinhDo { get; set; }
        public string KinhNghiem { get; set; }
        public string Cmnd { get; set; }
        public DateTime? NgayCap { get; set; }
        public string AiCap { get; set; }
        public DateTime? NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public string Dp1 { get; set; }
        public string Dp2 { get; set; }
        public string Dp3 { get; set; }
    }
}
