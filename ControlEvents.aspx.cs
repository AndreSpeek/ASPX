using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ControlEvents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    #region Control Events

    protected void btnButtom_Click(object sender, EventArgs e)
    {
        // Avoid writing too much code in events. Use Functions instead.
        SetText("You clicked the Button");
    }

    protected void btnLink_Click(object sender, EventArgs e)
    {
        // Avoid writing too much code in events. Use Functions instead.
        SetText("You clicked the Link Button");
    }

    protected void tbText_TextChanged(object sender, EventArgs e)
    {
        // Avoid writing too much code in events. Use Functions instead.
        SetText("You changed the text in the textbox");
    }

    protected void cbCheckBox_CheckedChanged(object sender, EventArgs e)
    {
        // Avoid writing too much code in events. Use Functions instead.
        if (cbCheckBox.Checked)
            SetText("You checked the CheckBox");
        else
            SetText("You unchecked the CheckBox");
    }

    #endregion

    #region Helper Functions

    // Use Helper Functions to keep similar code in one place
    protected void SetText(string text)
    {
        lblHeader.Text = text;
    }

    #endregion
}