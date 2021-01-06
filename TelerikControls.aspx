<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TelerikControls.aspx.cs" Inherits="TelerikControls" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Src="Controls/TopBar.ascx" TagPrefix="silver" TagName="TopBar" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Telerik Controls</title>
    <link href="Styles.css" rel="stylesheet" />
    <script src="Scripts.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="sm" runat="server" />
    <silver:TopBar runat="server" id="TopBar" />
    <asp:UpdatePanel ID="pnlTelerikControls" runat="server">
        <ContentTemplate>
            <div class="pageBar">
                <h1>Telerik Commonly Used Controls</h1>
                <table style="width: 100%;">
                    <colgroup>
                        <col style="width: 20%" /><col style="width: 20%" /><col style="width: 20%" /><col style="width: 20%" /><col style="width: 20%" />
                    <telerik:RadSlider RenderMode="Lightweight" runat="server" ID="RadSlider1" CssClass="dragRangeSlider" Width="100%" Height="70"
                                       IsSelectionRangeEnabled="true" MinimumValue="0" MaximumValue="24" SmallChange="0.5" LargeChange="1" ItemType="Tick"
                                       SelectionStart="7" SelectionEnd="15.5"
                                       AutoPostBack="true" ShowDecreaseHandle="false" ShowIncreaseHandle="false" EnableDragRange="true"
                                       Skin="Bootstrap">
                    </telerik:RadSlider>
                    </colgroup>
                    <tr>
                        <td>
                            <h2>RadComboBox</h2>
                            <telerik:RadComboBox ID="rcbComboBox" runat="server" AutoPostBack="true" OnClientSelectedIndexChanged="showWait" OnSelectedIndexChanged="rcbComboBox_SelectedIndexChanged" Width="90%">
                                <Items>
                                    <telerik:RadComboBoxItem Value="1" Text="Option 01" />
                                    <telerik:RadComboBoxItem Value="2" Text="Option 02" />
                                    <telerik:RadComboBoxItem Value="3" Text="Option 03" />
                                </Items>
                            </telerik:RadComboBox>
                            <br /><br />
                            <asp:Label ID="lblComboBox" runat="server" Text="Select an option" />
                        </td>
                        <td>
                            <h2>RadDatePicker</h2>
                            <telerik:RadDatePicker ID="rdpDatePicker" runat="server" DateInput-DateFormat="dd-MM-yyyy" ShowPopupOnFocus="true" AutoPostBack="true" 
                                ClientEvents-OnDateSelected="showWait" OnSelectedDateChanged="rdpDatePicker_SelectedDateChanged" Calendar-Width="220px" EnableShadows="false" />
                            <br /><br />
                            <asp:Label ID="lblDatePicker" runat="server" Text="Pick a date" />
                        </td>
                        <td>
                            <h2>RadDateTimePicker</h2>
                            <telerik:RadDateTimePicker ID="rdpDateTimePicker" runat="server" DateInput-DateFormat="dd-MM-yyyy HH:mm" ShowPopupOnFocus="true" Calendar-Width="220px" EnableShadows="false" />
                            <asp:Button ID="btnSetDateTime" runat="server" Text="GO" OnClientClick="showWait();" OnClick="btnSetDateTime_Click" />
                            <br /><br />
                            <asp:Label ID="lblDateTimePicker" runat="server" Text="Pick a date + time" />
                        </td>
                        <td>
                            <h2>RadNumericTextBox</h2>
                            <telerik:RadNumericTextBox ID="tbNumeric" runat="server" MinValue="0" MaxValue="100" NumberFormat-DecimalDigits="0" AutoPostBack="true" OnTextChanged="tbNumeric_TextChanged" Width="100px" ShowSpinButtons="true" />
                            <br /><br />
                            <asp:Label ID="lblNumeric" runat="server" Text="Pick a value between 0 and 100" />
                        </td>
                        <td>
                            <h2>RadColorPicker</h2>
                            <telerik:RadColorPicker ID="rcpColorPicker" runat="server" AutoPostBack="true" OnClientColorChange="showWait" OnColorChanged="rcpColorPicker_ColorChanged" ShowIcon="true" />
                            <br />
                            <asp:Label ID="lblColorPicker" runat="server" Text="Pick a color" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <h2>RadAsyncUpload</h2>
                            <div class="fileUpload">
                                <telerik:RadAsyncUpload ID="fuFileUploader" runat="server" AllowedFileExtensions=".pdf,.png" MultipleFileSelection="Automatic" DropZones=".fileUpload"
                                    PostbackTriggers="btnUpload,rcpColorPicker" />
                                <asp:Label ID="lblFileUploader" runat="server" Text="Select some PNG's or PDF's to upload" />
                                <br /><br />
                                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                            </div>
                        </td>
                        <td colspan="3">
                            <h2><asp:Label ID="lblScheduler" runat="server" Text="RadScheduler: Click on an Appointment" /></h2>
                            <telerik:RadScheduler ID="rsScheduler" runat="server" RenderMode="Lightweight" SelectedView="MonthView" Culture="nl-NL" Height="750px"
                                EnableDatePicker="True" FirstDayOfWeek="Monday" LastDayOfWeek="Sunday" TimeZoneOffset="00:00:00" ShowAllDayRow="true" RowHeight="30px"
                                ShowViewTabs="True" DayStartTime="08:00:00" DayEndTime="21:00:00" ShowFullTime="false"
                                OnAppointmentDataBound="rsScheduler_AppointmentDataBound" OnAppointmentCreated="rsScheduler_AppointmentCreated" 
                                OnNavigationCommand="rsScheduler_NavigationCommand" OnNavigationComplete="rsScheduler_NavigationComplete"
                                OnClientNavigationCommand="showWait"
                                AllowDelete="false"
                                ReadOnly="false">
                                <AdvancedForm Modal="False" Enabled="false" />
                                <DayView UserSelectable="true" />
                                <WeekView UserSelectable="true" />
                                <MonthView VisibleAppointmentsPerDay="5" />
                                <TimelineView UserSelectable="true" />
                                <AgendaView UserSelectable="true" NumberOfDays="1" />
                                <AppointmentContextMenuSettings EnableDefault="false" />
                                <AppointmentTemplate>
                                    <div id="divAppointment" runat="server" style="font-size: 11px;" title="<%#Container.Appointment.Description%>">
                                        <asp:LinkButton ID="btnNavigate" runat="server" OnClientClick="showWait();" OnClick="btnNavigate_Click" >
                                            <b><%#Container.Appointment.Subject%></b>
                                            <br />
                                            <%#Container.Appointment.Description%>
                                        </asp:LinkButton>
                                    </div>
                                </AppointmentTemplate>
                            </telerik:RadScheduler>
                        </td>
                    </tr>
                </table>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
