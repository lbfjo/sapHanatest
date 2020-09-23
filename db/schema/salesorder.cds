using from './common';
using from'./stores';
using from'./products';

context trainingBruno.salesorder {

    entity TBL_SALESORDER {
        key ID: Integer;        
        SHORT_DESCRIPTION : String (100);
        STORE : Association to trainingBruno.stores.TBL_STORE;
        PRODUCT : Association to trainingBruno.products.TBL_PRODUCTS;
        QUANTITY : Integer;
        SALES_PRICE : Integer;
        STATUS: trainingBruno.common.STATUS_TYPE;
    }        
        
}