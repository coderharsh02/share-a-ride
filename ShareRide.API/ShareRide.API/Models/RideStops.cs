﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace ShareRide.API.Models
{
    public partial class RideStops
    {
        public int StopId { get; set; }
        public int RideId { get; set; }
        public string StopName { get; set; }
        public string StopDetails { get; set; }
        public int LstUser { get; set; }
        public DateTime LstDate { get; set; }
        public string LstIp { get; set; }

        public virtual Rides Ride { get; set; }
    }
}