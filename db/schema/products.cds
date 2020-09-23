using { trainingBruno.common as common} from'./common';
using { trainingBruno.store as stores} from '../schema/stores';
using { trainingBruno.salesorder as salesorders} from './salesorder';

context trainingBruno.products {
 
    entity TBL_Products {
        key ID                : Integer;
            Short_Description : String(100);
            Long_Description  : String(500);
            BASE_PRICE        : Double;
            Status            : trainingBruno.common.STATUS_TYPE;
            virtual SALES_PRICE : Double;
            Product_Type      : Association to  TBL_Product_Type;
            Sales_Order : Composition of many trainingBruno.salesorder.TBL_SALESORDER on Sales_Order.PRODUCT=$self;
    }
 
    entity TBL_Product_Type {
        key ID          : Integer;
            Description : String(100);
 
            Products    : Composition of many TBL_Products
                              on Products.Product_Type = $self;
    }
}


