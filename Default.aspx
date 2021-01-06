<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="Controls/TopBar.ascx" TagPrefix="silver" TagName="TopBar" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPX Basic Training Course</title>
    <link href="Styles.css" rel="stylesheet" />
    <script src="Scripts.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <silver:TopBar runat="server" id="TopBar" />
    <div class="pageBar">
        <table style="width: 950px;">
            <tr>
                <td colspan="2">
                    <h1>Table of contents</h1>
                </td>
            </tr>
            <tr>
                <td class="clickable" onclick="showWait(); window.top.location='Basics.aspx';" style="width: 250px;">
                    The Basics of ASPX
                </td>
                <td>
                    In this first page it is explained what the basic ASPX looks like and how a basic form is created.
                    It also shows some basic Controls, their Events and how to handle them from code.
                </td>
            </tr>
            <tr>
                <td class="clickable" onclick="showWait(); window.top.location='ControlEvents.aspx';">
                    Control Events
                </td>
                <td>
                    Most ASPX Controls have one or more server-side Events. Which means the action can be handled on the server.
                    In this page we will go through some of the most commonly used server-side Events and how to handle them.
                </td>
            </tr>
            <tr>
                <td class="clickable" onclick="showWait(); window.top.location='Repeaters.aspx';">
                    The Repeater Control
                </td>
                <td>
                    With the Repeater Control you can use one Template and then attach a DataTable to it.
                    For each DataRow in the DataTable, the Teplate will be used.
                    Using the OnItemDataBound Event, you can place the content of the DataRow into the placeholders.
                </td>
            </tr>
            <tr>
                <td class="clickable" onclick="showWait(); window.top.location='UserControlBasics.aspx';">
                    UserControl Basics
                </td>
                <td>
                    By using UserControls, you can create your own parts of reusable screen sections.
                    An example of this is the Topbar you see at the top of each page.
                    You can have Multiple UserControls on the same page and by making them visible or not, determine which one thould be shown.
                </td>
            </tr>
            <tr>
                <td class="clickable" onclick="showWait(); window.top.location='UserControlAdvanced.aspx';">
                    UserControls Advanced
                </td>
                <td>
                    Using the Updated Event, a User Control can let the Page now that it wants some action to be taken.
                    Using Publics it is possible to transfer values from the User Control to the Page.
                    Using Public Methods the Page can give instructions to the User Control.
                </td>
            </tr>
            <tr>
                <td class="clickable" onclick="showWait(); window.top.location='UpdatePanel.aspx';">
                    The Use of Update Panels
                </td>
                <td>
                    By applying an Update Panel around some content, only that content will be updated on PostBack.
                    The rest of the Page stays just as it is.
                    See this example and play the video. Notice that it keeps playing when you click a button.
                </td>
            </tr>
            <tr>
                <td class="clickable" onclick="showWait(); window.top.location='URLParameters.aspx';">
                    URL Parameters
                </td>
                <td>
                    You can use Parameters in the URL. The first one preceded with a question mark (?), the others using an ampersand (&).
                    From code you can grab the Parameters and their values.
                    Using these, you can execute specific code.
                    This especially usefull when going from one page to another.
                </td>
            </tr>
            <tr>
                <td class="clickable" onclick="showWait(); window.top.location='TelerikControls.aspx';">
                    Telerik Controls
                </td>
                <td>
                    Besides the Controls from ASP.NET, we also use some controls from Telerik.
                    The <a href="https://demos.telerik.com/aspnet-ajax/" target="_blank">AJAX Controls for ASP.NET</a> offer many additional Controls.
                    In this overview we show the most commonly used Controls.
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
