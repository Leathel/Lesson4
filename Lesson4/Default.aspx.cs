using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lesson4
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //calculate the tip
            Decimal tip = Convert.ToDecimal(txtAmount.Text) * Convert.ToDecimal(ddlPercent.SelectedValue);
            lbltip.Text = tip.ToString("c");
            Decimal total = Convert.ToDecimal(txtAmount.Text) + tip;
            lblTotal.Text = total.ToString("c");
            pnlResults.Visible = true;

        }
    }
}