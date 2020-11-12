using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using DOAN5.Models;

namespace DOAN5.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BoMonTrungTamsController : ControllerBase
    {
        private readonly SchoolmanagementContext _context;

        public BoMonTrungTamsController(SchoolmanagementContext context)
        {
            _context = context;
        }

        // GET: api/BoMonTrungTams
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TblBoMonTrungTam>>> GetTblBoMonTrungTam()
        {
            return await _context.TblBoMonTrungTam.ToListAsync();
        }
        [HttpGet("dsbomon")]
        public async Task<ActionResult<IEnumerable<TblBoMonTrungTam>>> Getdsbomon()
        {
            var listbomon = from bm in _context.TblBoMonTrungTam
                            join pk in _context.TblPhongKhoa on bm.MaPk equals pk.MaPk
                            select new
                            {
                                pk.TenPhongKhoa,
                                bm.MaBmtt,
                                bm.TenBmtt,
                                bm.SoLuongNhanSu,
                                bm.DiaChi,
                                pk.Webiste,
                                pk.NguoiTao,
                                pk.NgayTao
                            };
            return Ok(listbomon);
        }



        //public List<TblCanBoGiangVien> Search(int pageIndex, int pageSize, out long total, string MaGiaoDich)
        //{
        //    string msgError = "";
        //    total = 0;
        //    try
        //    {
        //        var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "sp_phieuthu_search",
        //            "@page_index", pageIndex,
        //            "@page_size", pageSize,
        //            "@MaGiaoDich", MaGiaoDich
        //            );
        //        if (!string.IsNullOrEmpty(msgError))
        //            throw new Exception(msgError);
        //        if (dt.Rows.Count > 0) total = (long)dt.Rows[0]["RecordCount"];
        //        return dt.ConvertTo<TblCanBoGiangVien>().ToList();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

        // GET: api/BoMonTrungTams/5
        [HttpGet("get-by-id/{id}")]
        public async Task<ActionResult<TblBoMonTrungTam>> GetTblBoMonTrungTam(string id)
        {
            var tblBoMonTrungTam = await _context.TblBoMonTrungTam.FindAsync(id);

            if (tblBoMonTrungTam == null)
            {
                return NotFound();
            }

            return tblBoMonTrungTam;
        }

        // PUT: api/BoMonTrungTams/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTblBoMonTrungTam(string id, TblBoMonTrungTam tblBoMonTrungTam)
        {
            if (id != tblBoMonTrungTam.MaBmtt)
            {
                return BadRequest();
            }

            _context.Entry(tblBoMonTrungTam).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TblBoMonTrungTamExists(id))
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

        // POST: api/BoMonTrungTams
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        [HttpPost("createBM")]
        public async Task<ActionResult<TblBoMonTrungTam>> PostTblBoMonTrungTam(TblBoMonTrungTam tblBoMonTrungTam)
        {
            _context.TblBoMonTrungTam.Add(tblBoMonTrungTam);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (TblBoMonTrungTamExists(tblBoMonTrungTam.MaBmtt))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetTblBoMonTrungTam", new { id = tblBoMonTrungTam.MaBmtt }, tblBoMonTrungTam);
        }

        // DELETE: api/BoMonTrungTams/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<TblBoMonTrungTam>> DeleteTblBoMonTrungTam(string id)
        {
            var tblBoMonTrungTam = await _context.TblBoMonTrungTam.FindAsync(id);
            if (tblBoMonTrungTam == null)
            {
                return NotFound();
            }

            _context.TblBoMonTrungTam.Remove(tblBoMonTrungTam);
            await _context.SaveChangesAsync();

            return tblBoMonTrungTam;
        }

        private bool TblBoMonTrungTamExists(string id)
        {
            return _context.TblBoMonTrungTam.Any(e => e.MaBmtt == id);
        }
    }
}
