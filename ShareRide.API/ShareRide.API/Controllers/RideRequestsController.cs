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
    public class RideRequestsController : ControllerBase
    {
        private readonly ShareRideContext _context;

        public RideRequestsController(ShareRideContext context)
        {
            _context = context;
        }

        // GET: api/RideRequests
        [HttpGet]
        public async Task<ActionResult<IEnumerable<RideRequests>>> GetRideRequests()
        {
          if (_context.RideRequests == null)
          {
              return NotFound();
          }
            return await _context.RideRequests.ToListAsync();
        }

        // GET: api/RideRequests/5
        [HttpGet("{id}")]
        public async Task<ActionResult<RideRequests>> GetRideRequests(int id)
        {
          if (_context.RideRequests == null)
          {
              return NotFound();
          }
            var rideRequests = await _context.RideRequests.FindAsync(id);

            if (rideRequests == null)
            {
                return NotFound();
            }

            return rideRequests;
        }

        // PUT: api/RideRequests/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutRideRequests(int id, RideRequests rideRequests)
        {
            if (id != rideRequests.RequestId)
            {
                return BadRequest();
            }

            _context.Entry(rideRequests).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RideRequestsExists(id))
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

        // POST: api/RideRequests
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<RideRequests>> PostRideRequests(RideRequests rideRequests)
        {
          if (_context.RideRequests == null)
          {
              return Problem("Entity set 'ShareRideContext.RideRequests'  is null.");
          }
            _context.RideRequests.Add(rideRequests);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetRideRequests", new { id = rideRequests.RequestId }, rideRequests);
        }

        // DELETE: api/RideRequests/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteRideRequests(int id)
        {
            if (_context.RideRequests == null)
            {
                return NotFound();
            }
            var rideRequests = await _context.RideRequests.FindAsync(id);
            if (rideRequests == null)
            {
                return NotFound();
            }

            _context.RideRequests.Remove(rideRequests);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool RideRequestsExists(int id)
        {
            return (_context.RideRequests?.Any(e => e.RequestId == id)).GetValueOrDefault();
        }
    }
}
