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
    public class LyLichGvsController : ControllerBase
    {
        private readonly SchoolmanagementContext _context;

        public LyLichGvsController(SchoolmanagementContext context)
        {
            _context = context;
        }

        // GET: api/LyLichGvs
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TblLyLichGv>>> GetTblLyLichGv()
        {
            return await _context.TblLyLichGv.ToListAsync();
        }

        // GET: api/LyLichGvs/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TblLyLichGv>> GetTblLyLichGv(long id)
        {
            var tblLyLichGv = await _context.TblLyLichGv.FindAsync(id);

            if (tblLyLichGv == null)
            {
                return NotFound();
            }

            return tblLyLichGv;
        }

        // PUT: api/LyLichGvs/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTblLyLichGv(long id, TblLyLichGv tblLyLichGv)
        {
            if (id != tblLyLichGv.MaLl)
            {
                return BadRequest();
            }

            _context.Entry(tblLyLichGv).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TblLyLichGvExists(id))
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

        // POST: api/LyLichGvs
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<TblLyLichGv>> PostTblLyLichGv(TblLyLichGv tblLyLichGv)
        {
            _context.TblLyLichGv.Add(tblLyLichGv);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetTblLyLichGv", new { id = tblLyLichGv.MaLl }, tblLyLichGv);
        }

        // DELETE: api/LyLichGvs/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<TblLyLichGv>> DeleteTblLyLichGv(long id)
        {
            var tblLyLichGv = await _context.TblLyLichGv.FindAsync(id);
            if (tblLyLichGv == null)
            {
                return NotFound();
            }

            _context.TblLyLichGv.Remove(tblLyLichGv);
            await _context.SaveChangesAsync();

            return tblLyLichGv;
        }

        private bool TblLyLichGvExists(long id)
        {
            return _context.TblLyLichGv.Any(e => e.MaLl == id);
        }
    }
}
