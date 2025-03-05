report 50402 customerSalesOrderSalesLineRpt
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './customerSalesOrderSalesLineReport.rdl';
    Caption = 'Customer & Sales Order With Sales Line Report_KSS';

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.";
            column(Customer_Number; "No.") { }


            dataitem("Sales Header"; "Sales Header")
            {
                DataItemLink = "Sell-to Customer No." = field("No.");
                column(Order_Number; "No.") { }
                column(Customer_E_Mail; "Sell-to E-Mail") { }
                column(Customer_City; "Sell-to City") { }
                column(Customer_Name; "Sell-to Customer Name") { }
                column(Order_Date; "Order Date") { }

                dataitem("Sales Line"; "Sales Line")
                {
                    DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                    column(Item_Number; "No.") { }
                    column(Item_Name; Description) { }
                    column(Quantity; Quantity) { }
                    column(Unit_Price; "Unit Price") { }
                }
            }
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }
    var
        myInt: Integer;
}