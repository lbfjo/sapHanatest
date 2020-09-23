using{trainingBruno.products as products} from '../db/schema/products';
using{trainingBruno.stores as stores} from '../db/schema/stores';
using{trainingBruno.salesorder as salesorder} from '../db/schema/salesorder';


 service MyServices {
     entity Products as projection on products.TBL_PRODUCTS;
     entity Stores as projection on stores.TBL_STORE;
     entity SalesOrder as projection on salesorder.TBL_SALESORDER
 }