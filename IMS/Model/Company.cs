//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Company
    {
        public long Company_id { get; set; }
        public string Company_Name { get; set; }
        public string Remarks { get; set; }
        public string Created_By { get; set; }
        public System.DateTime Creation_Date { get; set; }
        public string Modified_By { get; set; }
        public Nullable<System.DateTime> Modified_Date { get; set; }
        public bool Active_ind { get; set; }
		 public bool bctive_ind { get; set; }
    }
}