report 50405 purchaseOrderAndPstedPrchsRcpt
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './purchaseOrderAndPostedPurchaseRcpt.rdl';
    Caption = 'Purchase Order & Posted Purchase Receipt Report_KSS';


    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            RequestFilterFields = "No.";
            column(Purchase_Order_No; "No.") { }

            dataitem("Purch. Rcpt. Header"; "Purch. Rcpt. Header")
            {
                DataItemLink = "Order No." = field("No.");
                column(Posted_Purchase_Receipt_No; "No.") { }

                dataitem("Purch. Rcpt. Line"; "Purch. Rcpt. Line")
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