codeunit 50100 "Label Print Management"
{
    procedure PrintItemLabel(SalesLine: Record "Sales Line")
    var
        Item: Record Item;
        ItemLabelReport: Report "Item Label Report";
    begin
        if SalesLine."No." = '' then
            Error('No item selected');

        if SalesLine.Type <> SalesLine.Type::Item then
            Error('Selected line is not an item');

        if not Item.Get(SalesLine."No.") then
            Error('Item %1 not found', SalesLine."No.");

        // Set the item filter for the report
        Item.SetRange("No.", Item."No.");
        ItemLabelReport.SetTableView(Item);
        ItemLabelReport.SetSalesLine(SalesLine);
        ItemLabelReport.RunModal();
    end;
}
