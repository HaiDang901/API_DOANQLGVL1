using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using DOAN5.Models;
using Microsoft.AspNetCore.Razor.Language;

namespace DOAN5.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TblCanBoGiangViensController : ControllerBase
    {
        private readonly SchoolmanagementContext _context;

        public TblCanBoGiangViensController(SchoolmanagementContext context)
        {
            _context = context;
        }

        // GET: api/TblCanBoGiangViens
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TblCanBoGiangVien>>> GetTblCanBoGiangVien()
        {
            return await _context.TblCanBoGiangVien.ToListAsync();
        }

        [HttpGet("dscanbo")]
        public async Task<ActionResult<IEnumerable<TblCanBoGiangVien>>> GetTbldscanbo()
        {
            var listcanbo = from cb in _context.TblCanBoGiangVien
                            join l in _context.TblTrinhDoHocVan on cb.MaTdhv equals l.MaTdhv
                            select new
                            {
                                cb.MaCbgv,
                                cb.HoVaTen,
                                cb.GioiTinh,
                                l.ChungChi,
                                l.ChuyenNganhDaoTao,
                                l.DonViCt
                            };
            return Ok(listcanbo);
        }


        [HttpGet("dscanboluong")]
        public async Task<ActionResult<IEnumerable<TblCanBoGiangVien>>> GetTbldscanboluong()
        {
            var listcanboluong = from cb in _context.TblCanBoGiangVien
                                 join b in _context.TblTrinhDoHocVan on cb.MaTdhv equals b.MaTdhv
                                 join l in _context.TblLuong on cb.MaBac equals l.MaBac
                                 select new
                                 {
                                     cb.MaCbgv,
                                     cb.HoVaTen,
                                     cb.GioiTinh,
                                     b.ChungChi,
                                     b.ChuyenNganhDaoTao,
                                     b.DonViCt,
                                     l.MucLuong,
                                     l.LuongCb,
                                     l.NgayNhan
                                 };
            return Ok(listcanboluong);
        }

        [HttpGet("thongkegv")]
        public async Task<ActionResult<IEnumerable<TblCanBoGiangVien>>> Getthongke()
        {
            var listcanboluong = from cb in _context.TblCanBoGiangVien
                                 where cb.GioiTinh == 1
                                 select new
                                 {
                                     cb,
                                 };
            int s = listcanboluong.ToArray().Length;
            return Ok(s);
        }

        [HttpGet("thongkegvnu")]
        public async Task<ActionResult<IEnumerable<TblCanBoGiangVien>>> Getthongkenu()
        {
            var listcanboluong = from cb in _context.TblCanBoGiangVien
                                 where cb.GioiTinh == 0
                                 select new
                                 {
                                     cb,
                                     cb.HoVaTen,
                                 };
            int s = listcanboluong.ToArray().Length;

            return Ok(s);
        }


        // GET: api/TblCanBoGiangViens/5
        [HttpGet("get-by-id/{id}")]
        public async Task<ActionResult<TblCanBoGiangVien>> GetTblCanBoGiangVien(string id)
        {
            var tblCanBoGiangVien = await _context.TblCanBoGiangVien.FindAsync(id);

            if (tblCanBoGiangVien == null)
            {
                return NotFound();
            }

            return tblCanBoGiangVien;
        }

        [HttpGet("searchgiaovien")]
        public async Task<ActionResult<IEnumerable<TblCanBoGiangVien>>> SearchGiaoVien()
        {
            var listcanbo = from cb in _context.TblCanBoGiangVien
                            select new
                            {
                                cb.MaCbgv,
                                cb.HoVaTen,     
                                cb.GioiTinh
                            };
            return Ok(listcanbo);
        }

        //[HttpGet("searchgv/{id}/{id1}/{id2}")]
        //public JsonResult GetSearch(string id , string id1 , string id2)
        //{
        //    IEnumerable<dynamic> data = GetData($"exec sp_canbogiangvien_search @page_index = '{id}', @page_size  = '{id1}', @HoVaTen = '{id2}' ");
        //    List<TblCanBoGiangVien> list = new List<TblCanBoGiangVien>();
        //    foreach(dynamic temp in data)
        //    {
        //        MaCbgv = temp.MaCbgv;
        //    }

        //}


        // PUT: api/TblCanBoGiangViens/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for

        [HttpPut("{id}")]
        public async Task<IActionResult> PutTblCanBoGiangVien(string id, TblCanBoGiangVien tblCanBoGiangVien)
        {
            if (id != tblCanBoGiangVien.MaCbgv)
            {
                return BadRequest();
            }

            _context.Entry(tblCanBoGiangVien).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TblCanBoGiangVienExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/TblCanBoGiangViens
        // To protect from overposting attacks, enable the specific properties you want to bind to, for

        [HttpPost]
        public async Task<ActionResult<TblCanBoGiangVien>> PostTblCanBoGiangVien(TblCanBoGiangVien tblCanBoGiangVien)
        {
            _context.TblCanBoGiangVien.Add(tblCanBoGiangVien);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (TblCanBoGiangVienExists(tblCanBoGiangVien.MaCbgv))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetTblCanBoGiangVien", new { id = tblCanBoGiangVien.MaCbgv }, tblCanBoGiangVien);
        }

        // DELETE: api/TblCanBoGiangViens/5
        [HttpDelete("{id}")]

        public async Task<ActionResult<TblCanBoGiangVien>> DeleteTblCanBoGiangVien(string id)
        {
            var tblCanBoGiangVien = await _context.TblCanBoGiangVien.FindAsync(id);
            if (tblCanBoGiangVien == null)
            {
                return NotFound();
            }

            _context.TblCanBoGiangVien.Remove(tblCanBoGiangVien);
            await _context.SaveChangesAsync();

            return tblCanBoGiangVien;
        }

        private bool TblCanBoGiangVienExists(string id)
        {
            return _context.TblCanBoGiangVien.Any(e => e.MaCbgv == id);
        }
    }
}
