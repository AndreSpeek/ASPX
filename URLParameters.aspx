<%@ Page Language="C#" AutoEventWireup="true" CodeFile="URLParameters.aspx.cs" Inherits="URLParameters" %>
<%@ Register Src="Controls/TopBar.ascx" TagPrefix="silver" TagName="TopBar" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>URL Parameters</title>
    <link href="Styles.css" rel="stylesheet" />
    <script src="Scripts.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <silver:TopBar runat="server" id="TopBar" />
    <div class="pageBar">
        <h1><asp:Label ID="lblHeader" runat="server" /></h1>
        <table style="width: 100%;">
            <tr>
                <td id="td1" runat="server">
                    <div style="width: 100%; text-align: center; cursor: pointer;" onclick="window.top.location='URLParameters.aspx?Target=1';">
                        <h1 style="color: #000000;">1</h1>
                    </div>
                </td>
                <td id="td2" runat="server">
                    <div style="width: 100%; text-align: center; cursor: pointer;" onclick="window.top.location='URLParameters.aspx?Target=2';">
                        <h1 style="color: #000000;">2</h1>
                    </div>
                </td>
                <td id="td3" runat="server">
                    <div style="width: 100%; text-align: center; cursor: pointer;" onclick="window.top.location='URLParameters.aspx?Target=3';">
                        <h1 style="color: #000000;">3</h1>
                    </div>
                </td>
            </tr>
        </table>
        <div style="width: 100%; padding-top: 35px">
            <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
        </div>
    </div>
    </form>
</body>
</html>
