report 50404 salesOrderAndPostedSalesShp
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './salesOrderAndPostedSalesShp.rdl';
    Caption = 'Sales Order and Posted Sales Shipment Report_KSS';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "No.";
            column(Sales_Order_No; "No.") { }

            dataitem("Sales Shipment Header"; "Sales Shipment Header")
            {
                DataItemLink = "Order No." = field("No.");
                column(Posted_Sales_Shipment_No; "No.") { }

                dataitem("Sales Shipment Line"; "Sales Shipment Line")
                {
                    DataItemLink = "Document No." = field("No.");
                    column(Quantity; Quantity) { }
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