﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dabing1201SkySharkWebApplication
{
    public partial class Logoff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //when user logof 
            Session.RemoveAll();
        }
    }
}