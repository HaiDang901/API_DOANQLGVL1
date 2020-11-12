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
    public class KhenThuongKiLuatsController : ControllerBase
    {
        private readonly SchoolmanagementContext _context;

        public KhenThuongKiLuatsController(SchoolmanagementContext context)
        {
            _context = context;
        }

        // GET: api/KhenThuongKiLuats
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TblKhenThuongKiLuat>>> GetTblKhenThuongKiLuat()
        {
            return await _context.TblKhenThuongKiLuat.ToListAsync();
        }

        // GET: api/KhenThuongKiLuats/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TblKhenThuongKiLuat>> GetTblKhenThuongKiLuat(long id)
        {
            var tblKhenThuongKiLuat = await _context.TblKhenThuongKiLuat.FindAsync(id);

            if (tblKhenThuongKiLuat == null)
            {
                return NotFound();
            }

            return tblKhenThuongKiLuat;
        }

        // PUT: api/KhenThuongKiLuats/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTblKhenThuongKiLuat(long id, TblKhenThuongKiLuat tblKhenThuongKiLuat)
        {
            if (id != tblKhenThuongKiLuat.MaKtkl)
            {
                return BadRequest();
            }

            _context.Entry(tblKhenThuongKiLuat).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TblKhenThuongKiLuatExists(id))
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

        // POST: api/KhenThuongKiLuats
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<TblKhenThuongKiLuat>> PostTblKhenThuongKiLuat(TblKhenThuongKiLuat tblKhenThuongKiLuat)
        {
            _context.TblKhenThuongKiLuat.Add(tblKhenThuongKiLuat);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetTblKhenThuongKiLuat", new { id = tblKhenThuongKiLuat.MaKtkl }, tblKhenThuongKiLuat);
        }

        // DELETE: api/KhenThuongKiLuats/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<TblKhenThuongKiLuat>> DeleteTblKhenThuongKiLuat(long id)
        {
            var tblKhenThuongKiLuat = await _context.TblKhenThuongKiLuat.FindAsync(id);
            if (tblKhenThuongKiLuat == null)
            {
                return NotFound();
            }

            _context.TblKhenThuongKiLuat.Remove(tblKhenThuongKiLuat);
            await _context.SaveChangesAsync();

            return tblKhenThuongKiLuat;
        }

        private bool TblKhenThuongKiLuatExists(long id)
        {
            return _context.TblKhenThuongKiLuat.Any(e => e.MaKtkl == id);
        }
    }
}
