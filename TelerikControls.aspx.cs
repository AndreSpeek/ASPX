using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Telerik.Web.UI;

public partial class TelerikControls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        rsScheduler.DataKeyField = "PlanningID";
        rsScheduler.DataStartField = "StartDate";
        rsScheduler.DataEndField = "EndDate";
        rsScheduler.DataSubjectField = "Subject";
        rsScheduler.DataDescriptionField = "Description";

        if (!IsPostBack)
        {
            // Fill the Table with dummmy data
            table = GetData();
            // Assign the table to the RadScheduler
            rsScheduler.DataSource = table;
            rsScheduler.DataBind();
        }
    }

    #region Control Events

    #region Basic Controls

    protected void rcbComboBox_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
        lblComboBox.Text = "You selected option " + rcbComboBox.SelectedValue;
    }

    protected void rdpDatePicker_SelectedDateChanged(object sender, Telerik.Web.UI.Calendar.SelectedDateChangedEventArgs e)
    {
        lblDatePicker.Text = "You picked the date:<br/> " + ((DateTime)rdpDatePicker.SelectedDate).ToString("dd-MM-yyyy");
    }

    protected void btnSetDateTime_Click(object sender, EventArgs e)
    {
        lblDateTimePicker.Text = "You picked the date + time:<br/> " + ((DateTime)rdpDateTimePicker.SelectedDate).ToString("dd-MM-yyyy HH:mm");
    }

    protected void tbNumeric_TextChanged(object sender, EventArgs e)
    {
        lblNumeric.Text = "You picked the number " + tbNumeric.Value.ToString();
    }

    protected void rcpColorPicker_ColorChanged(object sender, EventArgs e)
    {
        lblColorPicker.Text = "You picked " + System.Drawing.ColorTranslator.ToHtml(rcpColorPicker.SelectedColor);
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        SaveFiles();
    }

    #endregion

    #region Scheduler

    protected void rsScheduler_AppointmentDataBound(object sender, SchedulerEventArgs e)
    {
        DataRowView row = (DataRowView)e.Appointment.DataItem;
        if (e.Appointment.Description == "Programming")
            e.Appointment.BackColor = System.Drawing.ColorTranslator.FromHtml("#5599CC");
        else if (e.Appointment.Description == "Training")
            e.Appointment.BackColor = System.Drawing.ColorTranslator.FromHtml("#CC0000");
        else
            e.Appointment.BackColor = System.Drawing.ColorTranslator.FromHtml("#EE8A00");
        e.Appointment.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
    }

    protected void rsScheduler_AppointmentCreated(object sender, AppointmentCreatedEventArgs e)
    {
        LinkButton btnNavigate = (LinkButton)e.Container.FindControl("btnNavigate");
        btnNavigate.CommandArgument = e.Appointment.ID.ToString();
    }

    protected void rsScheduler_NavigationCommand(object sender, SchedulerNavigationCommandEventArgs e)
    {
        // Do Something before Reloading Data
    }

    protected void rsScheduler_NavigationComplete(object sender, SchedulerNavigationCompleteEventArgs e)
    {
        // Fill the Table with dummmy data
        table = GetData();
        // Assign the table to the RadScheduler
        rsScheduler.DataSource = table;
        rsScheduler.DataBind();
    }

    protected void btnNavigate_Click(object sender, EventArgs e)
    {
        string planningID = ((IButtonControl)sender).CommandArgument;
        lblScheduler.Text = "RadScheduler: You clicked Appointment " + planningID;
    }

    #endregion

    #endregion

    #region Helper Functions

    protected void SaveFiles()
    {
        if (fuFileUploader.UploadedFiles.Count > 0)
        {
            string uploadedFiles = "";

            foreach (UploadedFile uploadedFile in fuFileUploader.UploadedFiles)
            {
                uploadedFiles = uploadedFiles + uploadedFile.GetName() + "<br/>";
            }

            lblFileUploader.Text = "You uploaded:<br/>" + uploadedFiles;

            fuFileUploader.UploadedFiles.Clear();
        }
    }

    // Helper Function to create and populate a table with dummy data
    protected DataTable GetData()
    {
        DateTime selectedDate = rsScheduler.VisibleRangeStart.AddDays(7);

        // Create the DataTable
        DataTable dt = new DataTable();
        // Add Columns to the DataTable
        dt.Columns.Add("PlanningID");
        dt.Columns.Add("StartDate");
        dt.Columns.Add("EndDate");
        dt.Columns.Add("Subject");
        dt.Columns.Add("Description");

        // Create a DataRow
        DataRow newRow;

        // Use a loop to insert 10 records
        for (int i = 1; i <= 10; i++)
        {
            // Create the new DataRow for the DataTable
            newRow = dt.NewRow();
            // Specify the Column Values
            newRow[0] = i;
            newRow[1] = selectedDate.Date.AddDays(i).AddHours(9);
            newRow[2] = selectedDate.Date.AddDays(i).AddHours(17);
            newRow[3] = "Appointment " + i.ToString();
            newRow[4] = "Consultancy";
            // Add the new DataRow to the DataTable
            dt.Rows.Add(newRow);

            // Create the new DataRow for the DataTable
            newRow = dt.NewRow();
            // Specify the Column Values
            newRow[0] = i + 10;
            newRow[1] = selectedDate.Date.AddDays(i * -1).AddHours(9);
            newRow[2] = selectedDate.Date.AddDays(i * -1).AddHours(17);
            newRow[3] = "Appointment " + (i + 10).ToString();
            newRow[4] = "Programming";
            // Add the new DataRow to the DataTable
            dt.Rows.Add(newRow);
        }

        // Create the new DataRow for the DataTable
        newRow = dt.NewRow();
        // Specify the Column Values
        newRow[0] = 21;
        newRow[1] = selectedDate.Date.AddHours(9);
        newRow[2] = selectedDate.Date.AddHours(17);
        newRow[3] = "Appointment 21";
        newRow[4] = "Training";
        // Add the new DataRow to the DataTable
        dt.Rows.Add(newRow);

        return dt;
    }

    #endregion

    private DataTable table = new DataTable();
}