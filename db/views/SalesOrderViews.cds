using { trainingBruno.salesorder as salesorder} from '../schema/salesorder';

namespace training.salesorderview;

define view SalesOrderView as 
select from salesorder.TBL_SALESORDER{
    *
};
