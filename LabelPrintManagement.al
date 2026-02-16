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

    procedure GetLabelTypeDescription(LabelType: Option " ","Standard","Barcode","QR Code","Custom"): Text
    begin
        case LabelType of
            LabelType::" ":
                exit('No Label');
            LabelType::Standard:
                exit('Standard Label');
            LabelType::Barcode:
                exit('Barcode Label');
            LabelType::"QR Code":
                exit('QR Code Label');
            LabelType::Custom:
                exit('Custom Label');
        end;
    end;
}
