codeunit 50100 "Label Print Management"
{
    var
        NoItemNumberErr: Label 'Item number is not specified on the sales line.';
        NotAnItemErr: Label 'The selected line is not an item.';
        ItemNotFoundErr: Label 'Item %1 was not found.', Comment = '%1 = Item No.';

    procedure PrintItemLabel(SalesLine: Record "Sales Line")
    var
        Item: Record Item;
        ItemLabelReport: Report "Item Label Report";
    begin
        if SalesLine."No." = '' then
            Error(NoItemNumberErr);

        if SalesLine.Type <> SalesLine.Type::Item then
            Error(NotAnItemErr);

        if not Item.Get(SalesLine."No.") then
            Error(ItemNotFoundErr, SalesLine."No.");

        // Set the item filter for the report
        Item.SetRange("No.", Item."No.");
        ItemLabelReport.SetTableView(Item);
        ItemLabelReport.SetSalesLine(SalesLine);
        ItemLabelReport.RunModal();
    end;
}
