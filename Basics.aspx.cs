using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Basics : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Server-side Events trigger a post-back which causes the page to be renderen again.
        // Use the !IsPostBack to do things only to be done on the first page load.
        if (!IsPostBack)
        {
            // Set values from code:
            lblHeader.Text = defaultText;
            // Add attributes from code:
            tbText.Attributes.Add("placeholder", "Enter some text here...");
            tbText.Attributes.Add("style", "padding: 5px; border: 1px solid #AAAAAA; border-radius: 3px;");
        }

        // Outside of the !IsPostBack will be executed always
        // Set TextBox focus
        tbText.Focus();
    }

    // Regions can be used to group things together. They can be collapsed to make the code more readable.
    #region Control Events

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        // Avoid writing too much code in events. Use Functions instead.
        SetText();
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        lblHeader.Text = defaultText;
        tbText.Text = "";
    }

    #endregion

    #region Helper Functions

    protected void SetText()
    {
        if (tbText.Text.Length > 0)
        {
            lblHeader.Text = defaultText + ": " + tbText.Text;
        }
        else
        {
            lblHeader.Text = defaultText + ": why not enter some text?";
        }
    }

    #endregion

    #region Privates

    private string defaultText = "ASPX Basics";

    #endregion
}