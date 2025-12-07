/** 
 * Searches the Users table for the row containing the
 * supplied email address, and returns the user ID.
 * 
 * Email address must be an exact match as a 
 * minor security consideration.
 */
CREATE OR REPLACE FUNCTION GET_USER_BY_EMAIL (
    P_EMAIL VARCHAR2
) RETURN NUMBER IS
    V_USER_ID USERS.USER_ID%TYPE;
BEGIN
    SELECT
        USER_ID
    INTO V_USER_ID
    FROM
        USERS
    WHERE
        LOWER(EMAIL) = LOWER(P_EMAIL);

    RETURN V_USER_ID;
END;
/
SELECT GET_USER_BY_EMAIL('Olumuyiwa.Unigwe@hotmail.com') AS "Olumu's User ID";

/**
 * This function can be used to retrieve a single warehouse ID
 * based on its more user-friendly location name.
 * 
 * This is one reason having a label and warehouse naming conventions 
 * for each warehouse is helpful.
 */
CREATE OR REPLACE FUNCTION GET_WAREHOUSE_BY_LOCATION_NAME (
    P_LOCATION VARCHAR2
) RETURN NUMBER IS
    V_WAREHOUSE_ID WAREHOUSES.WAREHOUSE_ID%TYPE;
BEGIN
    SELECT
        WAREHOUSE_ID
    INTO V_WAREHOUSE_ID
    FROM
        WAREHOUSES
    WHERE
        LOCATION_NAME LIKE '%' || P_LOCATION || '%'
    FETCH FIRST 1 ROWS ONLY;

    RETURN V_WAREHOUSE_ID;
END;
/
SELECT GET_WAREHOUSE_BY_LOCATION_NAME('Dover_DE_2') AS "Dover Warehouse 2 ID";

/**
 * This function can be used to find a product
 * with a name similar to the supplied string.
 */
CREATE OR REPLACE FUNCTION GET_PRODUCT_BY_PRODUCT_NAME (
    P_NAME VARCHAR2
) RETURN NUMBER IS
    V_PRODUCT_ID PRODUCTS.PRODUCT_ID%TYPE;
BEGIN
    SELECT
        PRODUCT_ID
    INTO V_PRODUCT_ID
    FROM
        PRODUCTS
    WHERE
        LOWER(PRODUCT_NAME) LIKE '%'
                  || LOWER(P_NAME)
                  || '%'
    FETCH FIRST 1 ROWS ONLY;

    RETURN V_PRODUCT_ID;
END;
/