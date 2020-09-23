using{trainingBruno.products as products} from '../db/schema/products';
using{trainingBruno.store as stores} from '../db/schema/stores';
using{trainingBruno.salesorder as salesorder} from '../db/schema/salesorder';
using{trainingBruno.teste as test} from '../db/schema/test';



 service MyServices {
    entity Products as projection on products.TBL_Products
    entity Stores as projection on stores.TBL_STORE;
    entity SalesOrder as projection on salesorder.TBL_SALESORDER;
    
    
    action hello(ID:Integer) returns String;
    action test(ID:Integer) returns String;
 }