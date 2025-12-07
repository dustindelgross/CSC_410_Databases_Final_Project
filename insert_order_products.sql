/**
 * Useful for finding a list of order IDs for these inserts.
 */
SELECT
        ORDER_ID, FIRST_NAME, LAST_NAME
    FROM
        ORDERS JOIN USERS ON CUSTOMER_ID = USER_ID;

-- Aiko wants tea
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 5, GET_PRODUCT_BY_PRODUCT_NAME('12/12'), 2 );
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 6, GET_PRODUCT_BY_PRODUCT_NAME('12/12'), 2 );
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 5, GET_PRODUCT_BY_PRODUCT_NAME('Overcoat'), 2 );
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 6, GET_PRODUCT_BY_PRODUCT_NAME('Socks'), 2 );
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 7, GET_PRODUCT_BY_PRODUCT_NAME('Ceramic Tea Set'), 1 );

-- Edna wants tea for her dorm
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 1, GET_PRODUCT_BY_PRODUCT_NAME('12/12'), 1 );

-- Grant wants a few lapel prank brooches and a bunch of red noses for his nephew's birthday party
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 2, GET_PRODUCT_BY_PRODUCT_NAME('WetLapel'), 3 );
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 2, GET_PRODUCT_BY_PRODUCT_NAME('Big Red Nose'), 30 );

-- Ava wants commedia masks for her daughter
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 3, GET_PRODUCT_BY_PRODUCT_NAME('Commedia'), 1 );

-- Chris wants to get his wife a nice tea set
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 4, GET_PRODUCT_BY_PRODUCT_NAME('Ceramic Tea Set'), 1 );

-- Carlo needs some industrial grade glycine for some experimental new slime toys
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 23, GET_PRODUCT_BY_PRODUCT_NAME('Glycine'), 3 );

-- Olumu wants a tea set as well
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 21, GET_PRODUCT_BY_PRODUCT_NAME('Ceramic Tea Set'), 1 );
INSERT INTO ORDER_PRODUCTS ( ORDER_ID, PRODUCT_ID, QTY ) VALUES ( 22, GET_PRODUCT_BY_PRODUCT_NAME('12/12'), 1 );


INSERT INTO ORDER_PRODUCT_RETURNS (
    ORDER_PRODUCT_ID,
    RETURN_REASON,
    RETURN_STATUS,
    QTY
) VALUES ( 
           33, 
           'Too much tea!',
           'pending',
           1 );

INSERT INTO ORDER_PRODUCT_RETURNS (
    ORDER_PRODUCT_ID,
    RETURN_REASON,
    RETURN_STATUS,
    QTY
) VALUES ( 
           35,           
           'Coat didn''t fit',
           'pending',
           1 );

INSERT INTO ORDER_PRODUCT_RETURNS (
    ORDER_PRODUCT_ID,
    RETURN_REASON,
    RETURN_STATUS,
    QTY
) VALUES ( 
           45, 
           'I decided to make my own tea!',
           'pending',
           1 );

INSERT INTO ORDER_PRODUCT_RETURNS (
    ORDER_PRODUCT_ID,
    RETURN_REASON,
    RETURN_STATUS,
    QTY
) VALUES ( 
           40, 
           'I ordered WAY too many noses',
           'pending',
           15 );

INSERT INTO ORDER_PRODUCT_RETURNS (
    ORDER_PRODUCT_ID,
    RETURN_REASON,
    RETURN_STATUS,
    QTY
) VALUES ( 
           43, 
           'I''m trying a different approach to my new designs',
           'pending',
           2 );