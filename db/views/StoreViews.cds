using { trainingBruno.store } from '../schema/stores';

namespace training.storesview;

define view StoreView as 
select from store.TBL_STORE{
    *
};

