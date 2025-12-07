/**
 * Gets delivery and tracking information for all order products
 * currently being processed at ShopSphere.
 * 
 * In chronological order from most recent, with null values
 * at the end.
 */
SELECT DISTINCT
    PRODUCT_NAME AS "Item", 
    OP.QTY, 
    W.SHIPPING_ZIP AS "Warehouse ZIP", 
    O.SHIPPING_ZIP AS "Order ZIP",
    ORDER_STATUS, 
    ORDER_DATE, 
    ESTIMATED_DELIVERY_DATE, 
    DELIVERY_DATE, 
    TRACKING_NUMBER, 
    O.ORDER_ID,
    OP.ORDER_PRODUCT_ID
FROM WAREHOUSES W
NATURAL JOIN WAREHOUSE_PRODUCTS WP
JOIN PRODUCTS P ON P.PRODUCT_ID = WP.PRODUCT_ID
LEFT OUTER JOIN ORDER_PRODUCTS OP ON OP.PRODUCT_ID = P.PRODUCT_ID
LEFT OUTER JOIN ORDERS O ON O.ORDER_ID = OP.ORDER_ID
WHERE O.ORDER_ID IS NOT NULL
ORDER BY ESTIMATED_DELIVERY_DATE DESC NULLS LAST;

/**
 * Select some useful information about a customer's order history, 
 * including their name for clarity, the order ID, the order product ID, 
 * the name of the product, and the quantity selected.
 */
SELECT
    ORDER_ID,
    ORDER_PRODUCT_ID,
    PRODUCT_NAME,
    ORDER_PRODUCTS.QTY,
    FIRST_NAME,
    LAST_NAME
FROM
         PRODUCTS
    NATURAL JOIN ORDER_PRODUCTS
    NATURAL JOIN ORDERS
    JOIN USERS ON USERS.USER_ID = ORDERS.CUSTOMER_ID
WHERE
    CUSTOMER_ID = GET_USER_BY_EMAIL('OLUMUYIWA.UNIGWE@HOTMAIL.COM');

/** 
 * A list of customer and product IDs
 * for all products purchased on ShopSphere.
 */
SELECT DISTINCT
    CUSTOMER_ID,
    PRODUCT_ID
FROM
         TRANSACTIONS
    NATURAL JOIN ORDERS
    NATURAL JOIN ORDER_PRODUCTS
WHERE
    PAYMENT_STATUS IN ( 'success', 'refunded' )
    AND ORDER_STATUS = 'delivered';

/** 
 * A list of orders and their products that a customer has paid for.
 */
SELECT ORDER_ID, ORDER_PRODUCT_ID, PRODUCT_NAME, QTY, ('$' || PRICE * (1+MARKUP) ) AS PRICE
FROM TRANSACTIONS
    NATURAL JOIN ORDER_PRODUCTS 
    NATURAL JOIN ORDERS
    NATURAL JOIN PRODUCTS
WHERE CUSTOMER_ID = GET_USER_BY_EMAIL('AIKO.2K@GMAIL.COM') AND PAYMENT_STATUS = 'success';

-- Add some estimated and actual delivery dates
UPDATE ORDER_PRODUCTS 
SET 
    ESTIMATED_DELIVERY_DATE = (
        SELECT ORDER_DATE + 7 
        FROM ORDERS 
        WHERE ORDER_STATUS = 'delivered' 
            AND ORDERS.ORDER_ID = ORDER_PRODUCTS.ORDER_ID
    ), 
    DELIVERY_DATE = (
        SELECT ORDER_DATE + 7.2 
        FROM ORDERS 
        WHERE ORDERS.ORDER_ID = ORDER_PRODUCTS.ORDER_ID 
            AND ORDER_STATUS = 'delivered'
    ) 
WHERE DELIVERY_DATE IS NULL 
    AND ESTIMATED_DELIVERY_DATE IS NULL 
    AND ORDER_ID IN (
        SELECT ORDER_ID FROM ORDERS WHERE ORDER_STATUS = 'delivered'
    );