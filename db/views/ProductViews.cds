using { trainingBruno.products as products} from '../schema/products';
using { trainingBruno.store as stores} from '../schema/stores';

namespace training.productsview;

define view ProductTypeView as 
    select from products.TBL_Product_Type{
        *
    };

define view ProductWithTypeView as  
    select from products.TBL_Products{
        ID,
        Short_Description,
        Long_Description,
        Product_Type.Description as PRODUCT_TYPE,
        BASE_PRICE
    };

define view ProductByStoreView as
    select from products.TBL_Products{
        ID,
        Short_Description,
        Long_Description,
        Product_Type.Description as PRODUCT_TYPE,
        BASE_PRICE,
        STORE.NAME,
        STORE.REGION,
    };

