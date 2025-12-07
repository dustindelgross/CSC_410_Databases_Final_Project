INSERT INTO CUSTOMER_PRODUCTS (
    CUSTOMER_ID,
    PRODUCT_ID,
    DATE_LAST_PURCHASED
) VALUES ( GET_USER_BY_EMAIL('aiko.2k@gmail.com'),
           7,
           (
               SELECT
                   ORDER_DATE
               FROM
                        ORDERS
                   NATURAL JOIN ORDER_PRODUCTS
               WHERE
                       CUSTOMER_ID = GET_USER_BY_EMAIL('aiko.2k@gmail.com')
                   AND PRODUCT_ID = 7
               ORDER BY
                   ORDER_DATE DESC
               FETCH FIRST 1 ROWS ONLY
           ) );

INSERT INTO CUSTOMER_PRODUCTS (
    CUSTOMER_ID,
    PRODUCT_ID,
    DATE_LAST_PURCHASED
) VALUES ( GET_USER_BY_EMAIL('aiko.2k@gmail.com'),
           21,
           (
               SELECT
                   ORDER_DATE
               FROM
                        ORDERS
                   NATURAL JOIN ORDER_PRODUCTS
               WHERE
                       CUSTOMER_ID = GET_USER_BY_EMAIL('aiko.2k@gmail.com')
                   AND PRODUCT_ID = 21
               ORDER BY
                   ORDER_DATE DESC
               FETCH FIRST 1 ROWS ONLY
           ) );

INSERT INTO CUSTOMER_PRODUCTS (
    CUSTOMER_ID,
    PRODUCT_ID,
    DATE_LAST_PURCHASED
) VALUES ( GET_USER_BY_EMAIL('aiko.2k@gmail.com'),
           22,
           (
               SELECT
                   ORDER_DATE
               FROM
                        ORDERS
                   NATURAL JOIN ORDER_PRODUCTS
               WHERE
                       CUSTOMER_ID = GET_USER_BY_EMAIL('aiko.2k@gmail.com')
                   AND PRODUCT_ID = 22
               ORDER BY
                   ORDER_DATE DESC
               FETCH FIRST 1 ROWS ONLY
           ) );

INSERT INTO CUSTOMER_PRODUCTS (
    CUSTOMER_ID,
    PRODUCT_ID,
    DATE_LAST_PURCHASED,
    LIKED
) VALUES ( GET_USER_BY_EMAIL('aiko.2k@gmail.com'),
           8,
           (
               SELECT
                   ORDER_DATE
               FROM
                        ORDERS
                   NATURAL JOIN ORDER_PRODUCTS
               WHERE
                       CUSTOMER_ID = GET_USER_BY_EMAIL('aiko.2k@gmail.com')
                   AND PRODUCT_ID = 8
               ORDER BY
                   ORDER_DATE DESC
               FETCH FIRST 1 ROWS ONLY
           ), TRUE );

INSERT INTO CUSTOMER_PRODUCTS (
    CUSTOMER_ID,
    PRODUCT_ID,
    DATE_LAST_PURCHASED,
    LIKED,
    DATE_LIKED,
    RATING
) VALUES ( GET_USER_BY_EMAIL('honk@clown.co'),
           8,
           (
               SELECT
                   ORDER_DATE
               FROM
                        ORDERS
                   NATURAL JOIN ORDER_PRODUCTS
               WHERE
                       CUSTOMER_ID = GET_USER_BY_EMAIL('honk@clown.co')
                   AND PRODUCT_ID = 8
               ORDER BY
                   ORDER_DATE DESC
               FETCH FIRST 1 ROWS ONLY
           ),
           TRUE,
           SYSDATE,
           5
            );