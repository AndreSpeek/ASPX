<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePanel.aspx.cs" Inherits="UpdatePanel" %>
<%@ Register Src="Controls/TopBar.ascx" TagPrefix="silver" TagName="TopBar" %>
<%@ Register Src="Controls/Advanced01.ascx" TagPrefix="silver" TagName="Advanced01" %>
<%@ Register Src="Controls/Advanced02.ascx" TagPrefix="silver" TagName="Advanced02" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Panel</title>
    <link href="Styles.css" rel="stylesheet" />
    <script src="Scripts.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="sm" runat="server" />
    <silver:TopBar runat="server" id="TopBar" />
    <div class="pageBar">
        <table style="width: 100%;">
            <tr>
                <td style="border: 1px dashed var(--highContrast); background-color: var(--lowContrast); padding: 21px;">
                    <asp:UpdatePanel ID="pnlUpdate" runat="server">
                        <ContentTemplate>
                            <asp:HiddenField ID="hfSelectedText" runat="server" />
                            <div id="divIntro" runat="server">
                                <h1>Select a User Control to start</h1>
                                <asp:Button ID="btnUserControl01" runat="server" Text="UserControl 01" OnClick="btnUserControl01_Click" />
                                &nbsp;
                                <asp:Button ID="btnUserControl02" runat="server" Text="UserControl 02" OnClick="btnUserControl02_Click" />
                                <br /><br />
                                <asp:Label ID="lblMessage" runat="server" />
                                <p>
                                    Do note that when you refresh the Page, you will not get a warning that the Form will be submitted again.
                                </p>
                            </div>
                            <div id="divUserControls" runat="server" visible="false">
                                <silver:Advanced01 runat="server" id="Advanced01" OnUpdated="Advanced01_Updated" />
                                <silver:Advanced02 runat="server" id="Advanced02" OnUpdated="Advanced02_Updated" />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td style="width: 550px; text-align: center;">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/BKorP55Aqvg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <asp:Button ID="btnPostBack" runat="server" Text="Do PostBack outside the Update Panel" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
