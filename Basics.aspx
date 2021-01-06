<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Basics.aspx.cs" Inherits="Basics" %>
<%@ Register Src="Controls/TopBar.ascx" TagPrefix="silver" TagName="TopBar" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPX Basics</title>
    <link href="Styles.css" rel="stylesheet" />
    <script src="Scripts.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <silver:TopBar runat="server" id="TopBar" />
    <div class="pageBar">
        <table>
            <tr>
                <td>
                    <h1><asp:Label ID="lblHeader" runat="server" /></h1>
                    <asp:TextBox ID="tbText" runat="server" Width="250px" /><br /><br />
                    <asp:Button ID="btnUpdate" runat="server" Text="Click here" OnClick="btnUpdate_Click" />&nbsp;
                    <asp:LinkButton ID="btnReset" runat="server" OnClick="btnReset_Click">
                        Reset
                    </asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
