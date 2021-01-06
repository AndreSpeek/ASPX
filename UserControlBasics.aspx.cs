using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControlBasics : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            SetViewMode("Basic01");
    }

    #region Control Events

    protected void btnBasic01_Click(object sender, EventArgs e)
    {
        SetViewMode("Basic01");
    }

    protected void btnBasic02_Click(object sender, EventArgs e)
    {
        SetViewMode("Basic02");
    }

    protected void btnBoth_Click(object sender, EventArgs e)
    {
        SetViewMode("Both");
    }

    #endregion

    protected void SetViewMode(string selectedView)
    {
        #region Reset View

        Basic01.Visible = false;
        Basic02.Visible = false;

        #endregion

        #region Selected View

        if (selectedView == "Basic01")
            Basic01.Visible = true;

        if (selectedView == "Basic02")
            Basic02.Visible = true;

        if (selectedView == "Both")
        {
            Basic01.Visible = true;
            Basic02.Visible = true;
        }

        #endregion
    }
}