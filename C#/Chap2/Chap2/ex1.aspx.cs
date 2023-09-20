using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap2
{
    public partial class ex1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cal_Click(object sender, EventArgs e)
        {
            decimal p = Convert.ToDecimal(price.Text);
            decimal per = Convert.ToDecimal(percent.Text);
            decimal discount = p * per / 100;
            decimal dollar = p - discount;
            decimal leb = dollar * 1500;

            disc.Text = discount.ToString() + "$";
            dol.Text = dollar.ToString() + "$";
            lp.Text = leb.ToString() + "lbp";
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            price.Text = "";
            percent.Text = "";
            disc.Text = "0";
            dol.Text = "0";
            lp.Text = "0";
        }
    }
}