﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ExcellentTaste.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class Entities : DbContext
    {
        public Entities()
            : base("name=Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Bestelling> Bestelling { get; set; }
        public virtual DbSet<Consumptie> Consumptie { get; set; }
        public virtual DbSet<ConsumptieGroep> ConsumptieGroep { get; set; }
        public virtual DbSet<ConsumptieItem> ConsumptieItem { get; set; }
        public virtual DbSet<Reservering> Reservering { get; set; }
        public virtual DbSet<Klant> Klant { get; set; }
    
        public virtual ObjectResult<GET_TODAYS_RESERVATIONS_Result> GET_TODAYS_RESERVATIONS()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GET_TODAYS_RESERVATIONS_Result>("GET_TODAYS_RESERVATIONS");
        }
    }
}
