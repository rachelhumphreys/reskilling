using StockService as service from '../../srv/stock-service';

// stock list report page
annotate StockService.Stocks with @(UI : {
    HeaderInfo      : {
        TypeName       : 'Stock Items',
        TypeNamePlural : 'Stock Items',
        Title          : {
            $Type : 'UI.DataField',
            Value : productName
        }
    },
Description : {
 $Type : 'UI.DataField',
 Value : productPrice
 
 },

    SelectionFields : [countryCode],
    Identification  : [{Value : productName}],
    // Define the table columns
    LineItem        : [
        {Value : productName},
        {Value : productPrice},
        {Value : quantity},
    ],
});

    // Stock Object Page
    annotate StockService.Stocks with  @(UI : {
        Facets           : [{
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Main',
            Target : '@UI.FieldGroup#Main',
        }],
        FieldGroup #Main : {Data : [
            {Value : productName},
            {Value : productPrice},
            {Value : quantity},
            {Value : comments}

        ]}
    });


