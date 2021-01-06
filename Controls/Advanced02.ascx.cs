using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_Advanced02 : System.Web.UI.UserControl
{
    public event EventHandler Updated;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    #region Control Events

    protected void btnSelect_Click(object sender, EventArgs e)
    {
        inputText = tbText.Text;
        this.Updated(this, new EventArgs());
    }

    #endregion

    #region Helper Functions

    public void Bind(string defaultText)
    {
        if (defaultText.Length > 0)
            tbText.Text = defaultText;
        else
            tbText.Text = "No text from User Control 01";
    }

    #endregion

    #region Publics

    public string inputText = "";

    #endregion
}