# Item Label Print Management PTE

A Per Tenant Extension (PTE) for Microsoft Dynamics 365 Business Central that enables printing item labels from sales orders.

## Features

### 1. Item Label Type Configuration
- **Label Type field** added to the Item table with the following options:
  - Standard
  - Barcode
  - QR Code
  - Custom
- Label type is displayed on the Item Card for easy configuration

### 2. Print Labels from Sales Orders
- **Print Item Label** action added to the Sales Order Subform
- Allows users to print labels for items directly from sales order lines
- Validates that the selected line is an item before printing

### 3. Label Print Management
- Centralized codeunit (`Label Print Management`) controls all label printing logic
- Includes validation and error handling
- Sets up the report with the correct item and sales order context

### 4. Item Label Report
- RDLC-based report for printing item labels
- Displays:
  - Item Number
  - Description
  - Unit of Measure
  - Sales Order Number
  - Configurable quantity of labels to print
- Compact label format suitable for printing on label printers

## Installation

1. Download or clone this repository
2. Open the project in Visual Studio Code with the AL Language extension
3. Update the `app.json` file if needed (especially the `id` field)
4. Compile and publish the extension to your Business Central environment

## Usage

### Configure Item Label Types
1. Navigate to an **Item Card**
2. Set the **Label Type** field to the desired label format
3. Save the item

### Print Labels from Sales Order
1. Open a **Sales Order**
2. Select a line item in the order
3. Click the **Print Item Label** action
4. In the report request page, specify the number of labels to print
5. Preview or print the labels

## Technical Details

- **Object ID Range**: 50100-50149
- **Platform**: Business Central version 19.0 or later
- **Runtime**: 9.0
- **Target**: OnPrem (can be adjusted for Cloud)

## Files Included

- `app.json` - Extension configuration
- `ItemTableExt.al` - Table extension for Item
- `ItemCardPageExt.al` - Page extension for Item Card
- `SalesOrderSubformPageExt.al` - Page extension for Sales Order Subform
- `LabelPrintManagement.al` - Codeunit for label print management
- `ItemLabelReport.al` - Report definition
- `ItemLabel.rdl` - RDLC layout for the label

## License

This is a sample PTE extension provided as-is.
