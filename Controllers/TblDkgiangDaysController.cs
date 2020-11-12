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
    public class TblDkgiangDaysController : ControllerBase
    {
        private readonly SchoolmanagementContext _context;

        public TblDkgiangDaysController(SchoolmanagementContext context)
        {
            _context = context;
        }

        // GET: api/TblDkgiangDays
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TblDkgiangDay>>> GetTblDkgiangDay()
        {
            return await _context.TblDkgiangDay.ToListAsync();
        }

        // GET: api/TblDkgiangDays/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TblDkgiangDay>> GetTblDkgiangDay(long id)
        {
            var tblDkgiangDay = await _context.TblDkgiangDay.FindAsync(id);

            if (tblDkgiangDay == null)
            {
                return NotFound();
            }

            return tblDkgiangDay;
        }

        // PUT: api/TblDkgiangDays/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTblDkgiangDay(long id, TblDkgiangDay tblDkgiangDay)
        {
            if (id != tblDkgiangDay.MaDkgd)
            {
                return BadRequest();
            }

            _context.Entry(tblDkgiangDay).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TblDkgiangDayExists(id))
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

        // POST: api/TblDkgiangDays
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<TblDkgiangDay>> PostTblDkgiangDay(TblDkgiangDay tblDkgiangDay)
        {
            _context.TblDkgiangDay.Add(tblDkgiangDay);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetTblDkgiangDay", new { id = tblDkgiangDay.MaDkgd }, tblDkgiangDay);
        }

        // DELETE: api/TblDkgiangDays/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<TblDkgiangDay>> DeleteTblDkgiangDay(long id)
        {
            var tblDkgiangDay = await _context.TblDkgiangDay.FindAsync(id);
            if (tblDkgiangDay == null)
            {
                return NotFound();
            }

            _context.TblDkgiangDay.Remove(tblDkgiangDay);
            await _context.SaveChangesAsync();

            return tblDkgiangDay;
        }

        private bool TblDkgiangDayExists(long id)
        {
            return _context.TblDkgiangDay.Any(e => e.MaDkgd == id);
        }
    }
}
