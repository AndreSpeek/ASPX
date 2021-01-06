<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TopBar.ascx.cs" Inherits="Controls_TopBar" %>
<div class="topBar">
    <table>
        <tr>
            <td>
                <asp:LinkButton ID="btnHome" runat="server" OnClick="btnHome_Click" OnClientClick="showWait();">
                    <img src="../Images/SilverEssence295_35.png" />
                </asp:LinkButton>
            </td>
        </tr>
    </table>
</div>
<div id="divWait" class="waitHidden">
    <h1>One moment please...</h1>
</div>