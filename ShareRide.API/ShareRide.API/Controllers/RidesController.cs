using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ShareRide.API.Models;

namespace ShareRide.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RidesController : ControllerBase
    {
        private readonly ShareRideContext _context;

        public RidesController(ShareRideContext context)
        {
            _context = context;
        }

        // GET: api/Rides
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Rides>>> GetRides()
        {
          if (_context.Rides == null)
          {
              return NotFound();
          }
            return await _context.Rides.ToListAsync();
        }

        // GET: api/Rides/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Rides>> GetRides(int id)
        {
          if (_context.Rides == null)
          {
              return NotFound();
          }
            var rides = await _context.Rides.FindAsync(id);

            if (rides == null)
            {
                return NotFound();
            }

            return rides;
        }

        // PUT: api/Rides/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutRides(int id, Rides rides)
        {
            if (id != rides.RideId)
            {
                return BadRequest();
            }

            _context.Entry(rides).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RidesExists(id))
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

        // POST: api/Rides
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Rides>> PostRides(Rides rides)
        {
          if (_context.Rides == null)
          {
              return Problem("Entity set 'ShareRideContext.Rides'  is null.");
          }
            _context.Rides.Add(rides);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetRides", new { id = rides.RideId }, rides);
        }

        // DELETE: api/Rides/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteRides(int id)
        {
            if (_context.Rides == null)
            {
                return NotFound();
            }
            var rides = await _context.Rides.FindAsync(id);
            if (rides == null)
            {
                return NotFound();
            }

            _context.Rides.Remove(rides);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool RidesExists(int id)
        {
            return (_context.Rides?.Any(e => e.RideId == id)).GetValueOrDefault();
        }
    }
}
