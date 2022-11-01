// Imports
const cds = require("@sap/cds");
/**
* The service implementation with all service handlers
*/
module.exports = cds.service.impl(async function () {
// Define constants for the Risk and BusinessPartners entities from the risk-service.cds file
const { Stocks } = this.entities;
/**
* Set price at double actual price after a READ operation on /stocks
*/
this.after("READ", Stocks, (data) => {
const stocks = Array.isArray(data) ? data : [data];
stocks.forEach((stock) => {

    stock.productPrice = stock.productPrice * 2 ;

});
});
});


