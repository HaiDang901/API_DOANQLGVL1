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
    public class TblBacLuongsController : ControllerBase
    {
        private readonly SchoolmanagementContext _context;

        public TblBacLuongsController(SchoolmanagementContext context)
        {
            _context = context;
        }

        // GET: api/TblBacLuongs
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TblBacLuong>>> GetTblBacLuong()
        {
            return await _context.TblBacLuong.ToListAsync();
        }

        // GET: api/TblBacLuongs/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TblBacLuong>> GetTblBacLuong(long id)
        {
            var tblBacLuong = await _context.TblBacLuong.FindAsync(id);

            if (tblBacLuong == null)
            {
                return NotFound();
            }

            return tblBacLuong;
        }

        // PUT: api/TblBacLuongs/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTblBacLuong(long id, TblBacLuong tblBacLuong)
        {
            if (id != tblBacLuong.MaBac)
            {
                return BadRequest();
            }

            _context.Entry(tblBacLuong).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TblBacLuongExists(id))
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

        // POST: api/TblBacLuongs
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<TblBacLuong>> PostTblBacLuong(TblBacLuong tblBacLuong)
        {
            _context.TblBacLuong.Add(tblBacLuong);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetTblBacLuong", new { id = tblBacLuong.MaBac }, tblBacLuong);
        }

        // DELETE: api/TblBacLuongs/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<TblBacLuong>> DeleteTblBacLuong(long id)
        {
            var tblBacLuong = await _context.TblBacLuong.FindAsync(id);
            if (tblBacLuong == null)
            {
                return NotFound();
            }

            _context.TblBacLuong.Remove(tblBacLuong);
            await _context.SaveChangesAsync();

            return tblBacLuong;
        }

        private bool TblBacLuongExists(long id)
        {
            return _context.TblBacLuong.Any(e => e.MaBac == id);
        }
    }
}
