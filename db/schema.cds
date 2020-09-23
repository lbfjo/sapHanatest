using from './schema/common';
using from './schema/products';
using from './schema/stores';
using from './schema/salesorder';

entity Base {
    key ID: Integer;
        TIMESTAMP: Date;
        NAME: String;
}

