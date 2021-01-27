using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblComment.Text = TextWithURLs(comment);
    }

    private string comment = "For more information about me, go to http://andrespeek.com";
    public string TextWithURLs(string input)
    {
        Regex regx = new Regex("http://([\\w+?\\.\\w+])+([a-zA-Z0-9\\~\\!\\@\\#\\$\\%\\^\\&amp;\\*\\(\\)_\\-\\=\\+\\\\\\/\\?\\.\\:\\;\\'\\,]*)?", RegexOptions.IgnoreCase);
        MatchCollection mactches = regx.Matches(input);
        foreach (Match match in mactches)
        {
            input = input.Replace(match.Value, "<a href='" + match.Value + "' target='_blank'>" + match.Value + "</a>");
        }
        return input;
    }
}