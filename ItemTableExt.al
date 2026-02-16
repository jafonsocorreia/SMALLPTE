tableextension 50100 "Item Label Type Ext" extends Item
{
    fields
    {
        field(50100; "Label Type"; Option)
        {
            Caption = 'Label Type';
            OptionMembers = " ","Standard","Barcode","QR Code","Custom";
            OptionCaption = ' ,Standard,Barcode,QR Code,Custom';
            DataClassification = CustomerContent;
        }
    }
}
