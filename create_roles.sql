/**
 * The responsibility for managing ShopSphere's operations
 * can mostly be handled by analyst and administrative analyst roles.
 */
CREATE ROLE SHOPSPHERE_ANALYST;

/**
 * Grant abilities to view which products are stored in which warehouses.
 * 
 * It's crucial for ShopSphere to maintain a high degree of accuracy in 
 * inventory management. This is one half of their entire business model.
 */
GRANT SELECT ON WAREHOUSES TO SHOPSPHERE_ANALYST;
GRANT SELECT ON WAREHOUSE_PRODUCTS TO SHOPSPHERE_ANALYST;

/**
 * Be extremely careful about granting read privileges for any potentially 
 * personally identifying information. 
 * 
 * The user and customer tables are entirely unavailable. 
 * 
 * Apart from that, this application ultimately belongs to
 * ShopSphere, and they should know what is being sold
 * on their platform.
 */
GRANT SELECT (
    SELLER_NAME,
    SELLER_BIO,
    SELLER_RATING,
    TOTAL_SALES
) ON SELLERS TO SHOPSPHERE_ANALYST;

/** 
 * Grant capabilities to read product information for all products,
 * much like customer capabilities.
 */
GRANT SELECT (
    PRODUCT_ID,
    PRODUCT_NAME,
    AVERAGE_RATING,
    PRODUCT_DESCRIPTION,
    PRICE,
    CATEGORY,
    DATE_ADDED,
    PUBLISHED,
    TOTAL_SALES
) ON PRODUCTS TO SHOPSPHERE_ANALYST;

/**
 * Grant capability to view delivery metrics.
 * 
 * Are orders being delivered on time? 
 * Are we over- or underestimating delivery dates?
 */
GRANT SELECT (
    ORDER_ID,
    PRODUCT_ID,
    QTY,
    ESTIMATED_DELIVERY_DATE,
    DELIVERY_DATE
) ON ORDER_PRODUCTS TO SHOPSPHERE_ANALYST;


/**
 * This is approaching privacy infringement territory.
 * 
 * We have to be pretty careful about what data we show about transactions,
 * even with our ShopSphere Analyst. Personally identifiable customer data can easily 
 * slip into some of these queries.
 * 
 * That said, several of these data points may be better suited for an accountant,
 * who would receive their own role.
 */
GRANT SELECT (
    ORDER_ID,
    DATE_INITIATED,
    LAST_MODIFIED,
    AMT
) ON TRANSACTIONS TO SHOPSPHERE_ANALYST;

/**
 * Essentially, grant the ability to analyze where products are 
 * moving on a broad level, and when they are moving most. 
 * 
 * This can help ShopSphere build better business relationships
 * with their partners by providing valuable insights by helping
 * sellers boost their revenue in certain areas.
 */
GRANT SELECT (
    TRANSACTION_ID,
    ORDER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP
) ON ORDERS TO SHOPSPHERE_ANALYST;

/**
 * The reviews are publicly available information, but the customer ID
 * remains obfuscated here, because it is not required to gather
 * valuable insights.
 */
GRANT SELECT (
    CUSTOMER_PRODUCT_ID,
    PRODUCT_ID,
    LIKED,
    REVIEW,
    REVIEW_DATE,
    DATE_LAST_PURCHASED
) ON CUSTOMER_PRODUCTS TO SHOPSPHERE_ANALYST;

/**
 * This profile focuses primarily on time-based and usage 
 * access control. We limit the number of sessions, each with
 * a total allowed connection time of 30 minutes.
 * 
 * Each call can only take up to 4 seconds of dedicated
 * CPU time before bailing on the call. Keep queries
 * reasonable, and this should be plenty.
 * 
 * 15 minutes to get really invested in your data 
 * analysis journey before you get booted for
 * inactivity. 
 * 
 * Be prepared to find exactly the data you want, but
 * it's only guaranteed as secure as this allows.
 */
CREATE PROFILE SS_DA_USER LIMIT
SESSIONS_PER_USER 2
CPU_PER_SESSION UNLIMITED
CPU_PER_CALL 4000
CONNECT_TIME 30
LOGICAL_READS_PER_SESSION DEFAULT
LOGICAL_READS_PER_CALL 500
IDLE_TIME 15
INACTIVE_ACCOUNT_TIME 30;

/** 
 * Welcome aboard, Bella!
 */
CREATE USER SS_DA_BELLA 
IDENTIFIED EXTERNALLY
AS 'bella@db.freesql.com:1541/23ai_34ui2'
PROFILE SS_DA_USER;

/** 
 * Say, "Hello, World".
 */
GRANT SHOPSPHERE_ANALYST TO SS_DA_BELLA;
GRANT CONNECT, CREATE SESSION TO SS_DA_BELLA;
