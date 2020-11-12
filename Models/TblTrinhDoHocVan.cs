using System;
using System.Collections.Generic;

namespace DOAN5.Models
{
    public partial class TblTrinhDoHocVan
    {
        public long MaTdhv { get; set; }
        public string TenHocVan { get; set; }
        public DateTime? NamTotNghiêp { get; set; }
        public string ChungChi { get; set; }
        public string ChuyenNganhDaoTao { get; set; }
        public string DonViCt { get; set; }
        public string TdtinHoc { get; set; }
        public string TdngoaiNgu { get; set; }
        public string SoNamDay { get; set; }
        public int? Status { get; set; }
        public string Dp1 { get; set; }
    }
}
