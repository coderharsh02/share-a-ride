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
    public class RideStopsController : ControllerBase
    {
        private readonly ShareRideContext _context;

        public RideStopsController(ShareRideContext context)
        {
            _context = context;
        }

        // GET: api/RideStops
        [HttpGet]
        public async Task<ActionResult<IEnumerable<RideStops>>> GetRideStops()
        {
          if (_context.RideStops == null)
          {
              return NotFound();
          }
            return await _context.RideStops.ToListAsync();
        }

        // GET: api/RideStops/5
        [HttpGet("{id}")]
        public async Task<ActionResult<RideStops>> GetRideStops(int id)
        {
          if (_context.RideStops == null)
          {
              return NotFound();
          }
            var rideStops = await _context.RideStops.FindAsync(id);

            if (rideStops == null)
            {
                return NotFound();
            }

            return rideStops;
        }

        // PUT: api/RideStops/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutRideStops(int id, RideStops rideStops)
        {
            if (id != rideStops.StopId)
            {
                return BadRequest();
            }

            _context.Entry(rideStops).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RideStopsExists(id))
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

        // POST: api/RideStops
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<RideStops>> PostRideStops(RideStops rideStops)
        {
          if (_context.RideStops == null)
          {
              return Problem("Entity set 'ShareRideContext.RideStops'  is null.");
          }
            _context.RideStops.Add(rideStops);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetRideStops", new { id = rideStops.StopId }, rideStops);
        }

        // DELETE: api/RideStops/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteRideStops(int id)
        {
            if (_context.RideStops == null)
            {
                return NotFound();
            }
            var rideStops = await _context.RideStops.FindAsync(id);
            if (rideStops == null)
            {
                return NotFound();
            }

            _context.RideStops.Remove(rideStops);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool RideStopsExists(int id)
        {
            return (_context.RideStops?.Any(e => e.StopId == id)).GetValueOrDefault();
        }
    }
}
