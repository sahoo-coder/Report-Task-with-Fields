report 50401 vendorPurchaseHeaderReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './vendorPurchaseHeaderReport.rdl';
    Caption = 'Vendor & Purchase Header Report';

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            RequestFilterFields = "No.";
            column(Vendor_Number; "No.") { }
            column(City; City) { }
            column(Country_Region_Code; "Country/Region Code") { }


            dataitem("Purchase Header"; "Purchase Header")
            {
                DataItemLink = "Buy-from Vendor No." = field("No.");
                column(Vendor_Order_No_; "Vendor Order No.") { }
                column(Buy_From_Country; "Buy-from County") { }

                dataitem("Purchase Line"; "Purchase Line")
                {
                    DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                    column(Item_Number; "No.") { }
                    column(Quantity; "Quantity (Base)") { }
                    column(Unit_of_Measure; "Unit of Measure") { }
                    column(Unit_Cost; "Unit Cost") { }
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