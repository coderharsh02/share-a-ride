using AutoMapper;
using ShareRide.API.Models;

namespace ShareRide.API.Helpers
{
    public class AutoMapperProfiles : Profile
    {
        public AutoMapperProfiles()
        {
            CreateMap<SP_GetUsersResult, Users>();
        }
    }
}