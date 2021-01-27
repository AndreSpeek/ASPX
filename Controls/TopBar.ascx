<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TopBar.ascx.cs" Inherits="Controls_TopBar" %>
<div class="topBar">
    <table>
        <tr>
            <td>
                <asp:LinkButton ID="btnHome" runat="server" OnClick="btnHome_Click" OnClientClick="showWait();">
                    <img src="../Images/andre_speek.jpg" />&nbsp;<h1>A Basic Introdution to ASP.NET WebForms with C#</h1>
                </asp:LinkButton>
            </td>
        </tr>
    </table>
</div>
<div id="divWait" class="waitHidden">
    <h1>One moment please...</h1>
</div>