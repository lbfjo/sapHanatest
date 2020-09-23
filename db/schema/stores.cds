using {trainingBruno.common as common} from './common';
using {trainingBruno.salesorder as salesorder} from './salesorder';
using{trainingBruno.products as products} from './products';

namespace trainingBruno.store;


    entity TBL_STORE {
        key ID: Integer;               
        NAME : String(50);
        REGION : String(50);
        PHONE  : String (20);
        STATUS : common.STATUS_TYPE; 

        SALES_ORDERS : Composition of many salesorder.TBL_SALESORDER on SALES_ORDERS.STORE = $self;

    };        
    
