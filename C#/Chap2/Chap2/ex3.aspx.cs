using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap2
{
    public partial class ex3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void val_Click(object sender, EventArgs e)
        {
            string nom = name.Text;
            string ag = age.Text;
            string cit = (city.SelectedItem.Text).ToString();

            msg.Text = "Hello " + nom + ", from " + cit + ", having " + ag + " years old";
        }

        protected void clear_Click1(object sender, EventArgs e)
        {
            name.Text = "";
            age.Text = "";
            city.SelectedIndex = 0;
            pass1.Text = "";
            pass2.Text = "";
            msg.Text = "Welcome!";
        }

        protected void insert_Click(object sender, EventArgs e)
        {
            string nom = name.Text;
            string ag = age.Text;
            string cit = (city.SelectedItem.Text).ToString();

            ListBox3.Items.Insert(0, string.Format("{0}, {2} years old from {1}", nom, cit, ag));
        }

        protected void del_Click(object sender, EventArgs e)
        {
            ListBox3.Items.Remove(ListBox3.SelectedItem);
        }

        protected void delall_Click(object sender, EventArgs e)
        {
            ListBox3.Items.Clear();
        }

        public string propertyAge
        {
            get { return this.age.Text; }
        }

        public string propertyCity
        {
            get { return city.SelectedItem.Text; }
        }
    }
}