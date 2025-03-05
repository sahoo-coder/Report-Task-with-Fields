report 50403 postedSalesShpAndSalLne
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './postedSalesShpAndSalLne.rdl';
    Caption = 'Get Posted Sales Ship With Sales Line by Giving Customer Name';

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = Name;
            column(Customer_Number; "No.") { }


            dataitem("Sales Shipment Header"; "Sales Shipment Header")
            {
                DataItemLink = "Sell-to Customer No." = field("No.");
                column(Order_Number; "No.") { }
                column(Customer_E_Mail; "Sell-to E-Mail") { }
                column(Customer_Name; "Sell-to Customer Name") { }

                dataitem("Sales Shipment Line"; "Sales Shipment Line")
                {
                    DataItemLink = "Document No." = field("No.");
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