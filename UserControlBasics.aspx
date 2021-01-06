<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserControlBasics.aspx.cs" Inherits="UserControlBasics" %>
<%@ Register Src="Controls/TopBar.ascx" TagPrefix="silver" TagName="TopBar" %>
<%@ Register Src="Controls/Basic01.ascx" TagPrefix="silver" TagName="Basic01" %>
<%@ Register Src="Controls/Basic02.ascx" TagPrefix="silver" TagName="Basic02" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UserControl Basics</title>
    <link href="Styles.css" rel="stylesheet" />
    <script src="Scripts.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <silver:TopBar runat="server" id="TopBar" />
    <div class="pageBar">
        <asp:Button ID="btnBasic01" runat="server" Text="Show Basic 01" OnClick="btnBasic01_Click" />
        <asp:Button ID="btnBasic02" runat="server" Text="Show Basic 02" OnClick="btnBasic02_Click" />
        <asp:Button ID="btnBoth" runat="server" Text="Show Both" OnClick="btnBoth_Click" />
        <silver:Basic01 runat="server" id="Basic01" />
        <silver:Basic02 runat="server" id="Basic02" />
    </div>
    </form>
</body>
</html>
