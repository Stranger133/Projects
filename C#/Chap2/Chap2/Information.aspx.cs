using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap2
{
    public partial class Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                name.Text = ((TextBox)PreviousPage.FindControl("name")).Text;
                name2.Text = ((TextBox)PreviousPage.FindControl("name")).Text;
                age.Text = PreviousPage.propertyAge;
                city.Text = PreviousPage.propertyCity;
            }
        }
    }
}