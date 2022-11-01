using inventory as inv from '../db/schema';
 // Annotate Risk elements
 annotate inv.Stocks with {
 ID @title : 'Stock Item';
 productName @title : 'Name';
 productPrice @title : 'Price';
 quantity @title : 'Quantity';
 warehouseLocation @title : 'Warehouse Location';
 companyCode @title : 'Company Code';
 countryCode @title : 'Country ID';
 comments @title : 'Comments';
 } 



