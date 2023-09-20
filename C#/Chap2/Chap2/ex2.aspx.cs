using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap2
{
    public partial class ex2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cal_Click(object sender, EventArgs e)
        {
            double val1 = Convert.ToDouble(value1.Text);
            double val2 = Convert.ToDouble(value2.Text);

            if (ListBox1.SelectedValue == "/") {
                if (val2 == 0.0)
                {
                    result.Text = "Error! Division by 0";
                }
                else
                {
                    result.Text = (val1 / val2).ToString();
                }
            }
            else if(ListBox1.SelectedValue == "+"){
                result.Text = (val1 + val2).ToString();
            }
            else if(ListBox1.SelectedValue == "-"){
                result.Text = (val1 - val2).ToString();
            }
            else if(ListBox1.SelectedValue == "*"){
                result.Text = (val1 * val2).ToString();
            }
            else if(ListBox1.SelectedValue == "sqrt"){
                if (val1 < 0.0 || val2 < 0.0)
                {
                    result.Text = "Error value can't be negative";
                }
                else
                {
                    result.Text = "Sqrt of Val1 = " + (Math.Sqrt(val1)).ToString() + ", Sqrt of Val2 = " + (Math.Sqrt(val2)).ToString();
                }
            }

        }

        protected void clear_Click(object sender, EventArgs e)
        {
            value1.Text = "";
            value2.Text = "";

            ListBox1.SelectedIndex = 0;
            result.Text = "0";
        }
    }
}