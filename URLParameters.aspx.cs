using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class URLParameters : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string target = "";
        
        // Check if the Parameter is used
        if (Request.QueryString["Target"] != null)
        {
            // Get the Parameter Value (it is always a string)
            target = Request.QueryString["Target"];

            // Check if the Value is 1, 2 or 3
            if (target == "1" || target == "2" || target == "3")
            {
                lblHeader.Text = "You picked " + target;
                Colorize(int.Parse(target));
                btnReset.Visible = true;
            }
            else
            {
                lblHeader.Text = "Click on the number you want to highlight:";
                ResetColors();
                btnReset.Visible = false;
            }
        }
        else
        {
            lblHeader.Text = "Click on the number you want to highlight:";
            btnReset.Visible = false;
        }
    }

    #region Control Events

    protected void btnReset_Click(object sender, EventArgs e)
    {
        // Redirect using no Parameters
        Response.Redirect("URLParameters.aspx");
    }

    #endregion

    #region Helper Functions

    protected void Colorize(int selected)
    {
        ResetColors();

        if (selected == 1)
            td1.Attributes.Add("style", activeStyle);
        if (selected == 2)
            td2.Attributes.Add("style", activeStyle);
        if (selected == 3)
            td3.Attributes.Add("style", activeStyle);
    }

    protected void ResetColors()
    {
        td1.Attributes.Remove("style");
        td2.Attributes.Remove("style");
        td3.Attributes.Remove("style");
    }

    #endregion

    private string activeStyle = "background-color: var(--activeBG); box-shadow: 0px 0px 3px #AAAAAA;";
}