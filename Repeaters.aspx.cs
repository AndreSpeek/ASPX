using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Repeaters : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Server-side Events trigger a post-back which causes the page to be renderen again.
        // Use the !IsPostBack to do things only to be done on the first page load.
        if (!IsPostBack)
        {
            // Fill the Table with dummmy data
            table = GetData();

            // Assign the table to the Button Repeater as the DataSource
            rptButtons.DataSource = table;
            // Perform the DataBind
            rptButtons.DataBind();

            // Assign the table to the Rows Repeater as the DataSource
            rptRows.DataSource = table;
            // Perform the DataBind
            rptRows.DataBind();
        }
        
    }

    #region Control Events

    protected void rptButtons_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        #region Get Controls

        RepeaterItem ri = e.Item;
        DataRowView dr = (DataRowView)e.Item.DataItem;
        Button btnButton = (Button)ri.FindControl("btnButton");

        #endregion

        #region Set Values

        btnButton.Text = dr["Name"].ToString();
        btnButton.CommandArgument = dr["Code"].ToString();

        #endregion
    }

    protected void btnButton_Click(object sender, EventArgs e)
    {
        Button btnButton = (Button)sender;
        lblButtonClicked.Text = "You clicked button " + btnButton.CommandArgument;
        //lblButtonClicked.Text = "You clicked button " + ((Button)sender).CommandArgument;
    }

    protected void rptRows_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        #region Get Controls

        RepeaterItem ri = e.Item;
        DataRowView dr = (DataRowView)e.Item.DataItem;

        Label lblCode = (Label)ri.FindControl("lblCode");
        Label lblName = (Label)ri.FindControl("lblName");
        Label lblCity = (Label)ri.FindControl("lblCity");

        #endregion

        #region Set Values

        lblCode.Text = dr["Code"].ToString();
        lblName.Text = dr["Name"].ToString();
        lblCity.Text = dr["City"].ToString();

        #endregion
    }

    #endregion

    #region Helper Functions

    // Helper Function to create and populate a table with dummy data
    protected DataTable GetData()
    {
        // Create the DataTable
        DataTable dt = new DataTable();
        // Add Columns to the DataTable
        dt.Columns.Add("Code");
        dt.Columns.Add("Name");
        dt.Columns.Add("City");

        // Create a DataRow
        DataRow newRow;

        // Use a loop to insert 10 records
        for (int i = 1; i <= 10; i++)
        {
            // Create the new DataRow for the DataTable
            newRow = dt.NewRow();
            // Specify the Column Values
            newRow[0] = i;
            newRow[1] = "Name " + i.ToString();
            newRow[2] = "City " + i.ToString();
            // Add the new DataRow to the DataTable
            dt.Rows.Add(newRow);
        } 


        return dt;
    }

    #endregion

    private DataTable table = new DataTable();
}