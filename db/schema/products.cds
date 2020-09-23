using from './common';
context trainingBruno.products {

    type PRODUCTS_TYPE : String(1) enum {        
        PRODUCT   = 'P';        
        MATERIAL = 'M';            
    }
    
    entity TBL_PRODUCTS {
        key ID: Integer;        
        SHORT_DESCRIPTION: String(100);        
        LONG_DESCRIPTION: String(500);        
        BASE_PRICE: Decimal;        
        STATUS: trainingBruno.common.STATUS_TYPE;            
        PRODUCT_TYPE: Association to TBL_PRODUCT_TYPE;    
    }        
        

        
    entity TBL_PRODUCT_TYPE {        
        key ID: Integer;        
        DESCRIPTION : String (100);
        PRODUCTS: Composition of many TBL_PRODUCTS on PRODUCTS.PRODUCT_TYPE = $self
     }
    
}