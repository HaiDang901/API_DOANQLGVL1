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
    public class PhongKhoasController : ControllerBase
    {
        private readonly SchoolmanagementContext _context;

        public PhongKhoasController(SchoolmanagementContext context)
        {
            _context = context;
        }

        // GET: api/PhongKhoas
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TblPhongKhoa>>> GetTblPhongKhoa()
        {
            return await _context.TblPhongKhoa.ToListAsync();
        }

        // GET: api/PhongKhoas/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TblPhongKhoa>> GetTblPhongKhoa(string id)
        {
            var tblPhongKhoa = await _context.TblPhongKhoa.FindAsync(id);

            if (tblPhongKhoa == null)
            {
                return NotFound();
            }

            return tblPhongKhoa;
        }

        // PUT: api/PhongKhoas/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTblPhongKhoa(string id, TblPhongKhoa tblPhongKhoa)
        {
            if (id != tblPhongKhoa.MaPk)
            {
                return BadRequest();
            }

            _context.Entry(tblPhongKhoa).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TblPhongKhoaExists(id))
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

        // POST: api/PhongKhoas
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<TblPhongKhoa>> PostTblPhongKhoa(TblPhongKhoa tblPhongKhoa)
        {
            _context.TblPhongKhoa.Add(tblPhongKhoa);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (TblPhongKhoaExists(tblPhongKhoa.MaPk))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetTblPhongKhoa", new { id = tblPhongKhoa.MaPk }, tblPhongKhoa);
        }

        // DELETE: api/PhongKhoas/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<TblPhongKhoa>> DeleteTblPhongKhoa(string id)
        {
            var tblPhongKhoa = await _context.TblPhongKhoa.FindAsync(id);
            if (tblPhongKhoa == null)
            {
                return NotFound();
            }

            _context.TblPhongKhoa.Remove(tblPhongKhoa);
            await _context.SaveChangesAsync();

            return tblPhongKhoa;
        }

        private bool TblPhongKhoaExists(string id)
        {
            return _context.TblPhongKhoa.Any(e => e.MaPk == id);
        }
    }
}
