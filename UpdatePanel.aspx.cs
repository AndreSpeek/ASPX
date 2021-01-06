using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdatePanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    #region Control Events

    protected void btnUserControl01_Click(object sender, EventArgs e)
    {
        SetViewMode("Control01");
    }

    protected void btnUserControl02_Click(object sender, EventArgs e)
    {
        Advanced02.Bind(hfSelectedText.Value);
        SetViewMode("Control02");
    }

    protected void Advanced01_Updated(object sender, EventArgs e)
    {
        selectedText = Advanced01.inputText;
        hfSelectedText.Value = selectedText;
        lblMessage.Text = "The Input Text was: " + selectedText;
        SetViewMode("Intro");
    }

    protected void Advanced02_Updated(object sender, EventArgs e)
    {
        selectedText = Advanced02.inputText;
        hfSelectedText.Value = selectedText;
        lblMessage.Text = "The Input Text was: " + selectedText;
        SetViewMode("Intro");
    }

    #endregion

    #region Helper Functions

    protected void SetViewMode(string selectedView)
    {
        #region Reset View

        divIntro.Visible = false;
        divUserControls.Visible = false;
        Advanced01.Visible = false;
        Advanced02.Visible = false;

        #endregion

        #region Selected View

        if (selectedView == "Intro")
            divIntro.Visible = true;

        if (selectedView == "Control01")
        {
            divUserControls.Visible = true;
            Advanced01.Visible = true;
        }

        if (selectedView == "Control02")
        {
            divUserControls.Visible = true;
            Advanced02.Visible = true;
        }

        #endregion
    }

    #endregion

    #region Privates

    private string selectedText = "";

    #endregion
}