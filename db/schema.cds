using from './schema/common';
using from './schema/products';
using from './schema/stores';
using from './schema/salesorder';
using from './schema/test';

entity Base {
    key ID: Integer;
        TIMESTAMP: Date;
        NAME: String;
}

