<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserControlAdvanced.aspx.cs" Inherits="UserControlAdvanced" %>
<%@ Register Src="Controls/TopBar.ascx" TagPrefix="silver" TagName="TopBar" %>
<%@ Register Src="Controls/Advanced01.ascx" TagPrefix="silver" TagName="Advanced01" %>
<%@ Register Src="Controls/Advanced02.ascx" TagPrefix="silver" TagName="Advanced02" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Controls Advanced</title>
    <link href="Styles.css" rel="stylesheet" />
    <script src="Scripts.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <silver:TopBar runat="server" id="TopBar" />
    <asp:HiddenField ID="hfSelectedText" runat="server" />
    <div class="pageBar">
        <div id="divIntro" runat="server">
            <h1>Select a User Control to start</h1>
            <asp:Button ID="btnUserControl01" runat="server" Text="UserControl 01" OnClick="btnUserControl01_Click" />
            &nbsp;
            <asp:Button ID="btnUserControl02" runat="server" Text="UserControl 02" OnClick="btnUserControl02_Click" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server" />
        </div>
        <div id="divUserControls" runat="server" visible="false">
            <silver:Advanced01 runat="server" id="Advanced01" OnUpdated="Advanced01_Updated" />
            <silver:Advanced02 runat="server" id="Advanced02" OnUpdated="Advanced02_Updated" />
        </div>
    </div>
    </form>
</body>
</html>
