pageextension 50100 "Item Card Label Ext" extends "Item Card"
{
    layout
    {
        addafter("Inventory Posting Group")
        {
            field("Label Type"; Rec."Label Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the type of label to print for this item';
            }
        }
    }
}
