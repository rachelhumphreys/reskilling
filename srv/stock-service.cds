using { inventory as inv } from '../db/schema';
 @path: 'service/stock'
 service StockService {
 entity Stocks as projection on inv.Stocks;
 annotate Stocks with @odata.draft.enabled;
 
 }