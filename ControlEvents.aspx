<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlEvents.aspx.cs" Inherits="ControlEvents" %>
<%@ Register Src="Controls/TopBar.ascx" TagPrefix="silver" TagName="TopBar" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPX Control Events</title>
    <link href="Styles.css" rel="stylesheet" />
    <script src="Scripts.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <silver:TopBar runat="server" id="TopBar" />
    <div class="pageBar">
        <table style="width: 750px;">
            <tr>
                <td colspan="2">
                    <h1><asp:Label ID="lblHeader" runat="server" Text="The Use of Server-side Events" /></h1>
                </td>
            </tr>
            <tr>
                <td style="width: 250px;">
                    <asp:Button ID="btnButtom" runat="server" Text="Click here" OnClientClick="showWait();" OnClick="btnButtom_Click" />
                </td>
                <td>
                    The button has the OnClick Event which is handled server-side. 
                    You can also use the OnClientClick which is handled client-side.
                    The client-side scripting is always done first, before the server-side Event is triggered.
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="btnLink" runat="server" OnClientClick="showWait();" OnClick="btnLink_Click">
                        Click here
                    </asp:LinkButton>
                </td>
                <td>
                    The Link Button is the equivalent of the a tag. It creates a clickable hyperling which can be handled server-side.
                    Inside the Link Button you can use text, images or whatever HTML you want to use.
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbText" runat="server" AutoPostBack="true" OnTextChanged="tbText_TextChanged" Width="90%" />
                </td>
                <td>
                    The TextBox also has a server-side event for TextChanged. However, it is not fired by default.
                    To activate the server-side event, you need to set its AutoPostBack attribute to true.
                    Be careful to use it in combination with the onblur since the OnTextChanged is not triggered if the text did not change.
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="cbCheckBox" runat="server" AutoPostBack="true" onclick="showWait();" OnCheckedChanged="cbCheckBox_CheckedChanged" />
                </td>
                <td>
                    The CheckBox also has a server-side event for TextChanged. Like the TextBox, it is not fired by default.
                    To activate the server-side event, you need to set its AutoPostBack attribute to true.
                    For client-side interaction, use the onclick event.
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
