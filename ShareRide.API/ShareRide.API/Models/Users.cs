﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace ShareRide.API.Models
{
    public partial class Users
    {
        public Users()
        {
            FeedbacksFromUser = new HashSet<Feedbacks>();
            FeedbacksToUser = new HashSet<Feedbacks>();
            RideRequests = new HashSet<RideRequests>();
            Rides = new HashSet<Rides>();
            Vehicles = new HashSet<Vehicles>();
        }

        public int UserId { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PhotoUrl { get; set; }
        public string Email { get; set; }
        public string AddressLine1 { get; set; }
        public string AddressLine2 { get; set; }
        public string State { get; set; }
        public string City { get; set; }
        public string Pincode { get; set; }
        public string PhoneNumber { get; set; }
        public int LstUser { get; set; }
        public DateTime LstDate { get; set; }
        public string LstIp { get; set; }

        public virtual ICollection<Feedbacks> FeedbacksFromUser { get; set; }
        public virtual ICollection<Feedbacks> FeedbacksToUser { get; set; }
        public virtual ICollection<RideRequests> RideRequests { get; set; }
        public virtual ICollection<Rides> Rides { get; set; }
        public virtual ICollection<Vehicles> Vehicles { get; set; }
    }
}