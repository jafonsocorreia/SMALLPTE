pageextension 50101 "Sales Order Sub Label Ext" extends "Sales Order Subform"
{
    actions
    {
        addafter("Item Availability by")
        {
            action("Print Item Label")
            {
                ApplicationArea = All;
                Caption = 'Print Item Label';
                ToolTip = 'Print label for the selected item';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    LabelPrintMgt: Codeunit "Label Print Management";
                begin
                    LabelPrintMgt.PrintItemLabel(Rec);
                end;
            }
        }
    }
}
