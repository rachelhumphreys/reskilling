sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'inventory/stocks/test/integration/FirstJourney',
		'inventory/stocks/test/integration/pages/StocksList',
		'inventory/stocks/test/integration/pages/StocksObjectPage'
    ],
    function(JourneyRunner, opaJourney, StocksList, StocksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('inventory/stocks') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStocksList: StocksList,
					onTheStocksObjectPage: StocksObjectPage
                }
            },
            opaJourney.run
        );
    }
);