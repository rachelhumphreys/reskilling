namespace inventory;
 using { managed, cuid } from '@sap/cds/common';
 entity Stocks : cuid, managed {
 
 productName : String(100);
 productPrice : Decimal;
 quantity : Integer;
 warehouseLocation : String;
 companyCode : String;
 countryCode : String;
 comments : String;
 
 }