<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Repeaters.aspx.cs" Inherits="Repeaters" %>
<%@ Register Src="Controls/TopBar.ascx" TagPrefix="silver" TagName="TopBar" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Repeater Control</title>
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
                    <h1>The Repeater Control</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <h2>The Repeater for Buttons</h2>
                    <asp:Repeater ID="rptButtons" runat="server" OnItemDataBound="rptButtons_ItemDataBound">
                        <ItemTemplate>
                            <asp:Button ID="btnButton" runat="server" OnClick="btnButton_Click" />
                        </ItemTemplate>
                    </asp:Repeater>
                    <br /><br />
                    <asp:Label ID="lblButtonClicked" runat="server" Text="Click a button" />
                </td>
            </tr>
            <tr>
                <td>
                    <h2>The Repeater for a table</h2>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="list" style="width: 500px;">
                        <tr>
                            <th>
                                Code
                            </th>
                            <th>
                                Name
                            </th>
                            <th>
                                City
                            </th>
                        </tr>
                        <asp:Repeater ID="rptRows" runat="server" OnItemDataBound="rptRows_ItemDataBound">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblCode" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblName" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblCity" runat="server" />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
