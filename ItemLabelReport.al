report 50100 "Item Label Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'ItemLabel.rdl';
    Caption = 'Item Label';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {
            }
            column(Description; Description)
            {
            }
            column(Description_2; "Description 2")
            {
            }
            column(Label_Type; "Label Type")
            {
            }
            column(Base_Unit_of_Measure; "Base Unit of Measure")
            {
            }
            column(Unit_Price; "Unit Price")
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(SalesOrderNo; SalesOrderNo)
            {
            }
            column(SalesLineQuantity; SalesLineQuantity)
            {
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(Quantity; Quantity)
                    {
                        ApplicationArea = All;
                        Caption = 'Number of Labels';
                        ToolTip = 'Specifies how many labels to print';
                    }
                }
            }
        }

        actions
        {
        }
    }

    var
        SalesOrderNo: Code[20];
        SalesLineQuantity: Decimal;
        Quantity: Integer;

    trigger OnInitReport()
    begin
        Quantity := 1;
    end;

    procedure SetSalesLine(SalesLine: Record "Sales Line")
    begin
        SalesOrderNo := SalesLine."Document No.";
        SalesLineQuantity := SalesLine.Quantity;
    end;
}
