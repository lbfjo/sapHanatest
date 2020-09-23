using from './common';
context trainingBruno.stores {

    entity TBL_STORE {
        key ID: Integer;               
        NAME : String(50);
        REGION : String(50);
        PHONE  : String (20);
        STATUS : trainingBruno.common.STATUS_TYPE; 
    }        
    
}