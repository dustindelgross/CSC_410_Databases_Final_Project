SET DEFINE OFF;

INSERT INTO USERS ( FIRST_NAME, LAST_NAME, EMAIL
) VALUES ( 'Edna', 'Gödel', 'ghd97@su.edu' );

INSERT INTO USERS ( FIRST_NAME, LAST_NAME, EMAIL
) VALUES ( 'Grant', 'Holloway', 'g_hollandaise@gmail.com' );

INSERT INTO USERS ( FIRST_NAME, LAST_NAME, EMAIL 
) VALUES ( 'Ava', 'Jared', 'ava.jared@icloud.com' );

INSERT INTO USERS ( FIRST_NAME, LAST_NAME, EMAIL
) VALUES ( 'Chris', 'Gardner', 'honk@clown.co' );

INSERT INTO USERS ( FIRST_NAME, LAST_NAME, EMAIL
) VALUES ( 'Aiko', 'Kurokawa', 'aiko.2k@gmail.com' );

INSERT INTO USERS ( FIRST_NAME, LAST_NAME, EMAIL
) VALUES ( 'Amir', 'Abdulrashid', 'amir_munsim@icloud.com' );

INSERT INTO USERS ( FIRST_NAME, LAST_NAME, EMAIL
) VALUES ( 'Zheng', 'Lihua', 'lihua.zheng@glycine.com.cn' );

INSERT INTO USERS ( FIRST_NAME, LAST_NAME, EMAIL
) VALUES ( 'Giancarlo', 'Pietragallo', 'bambino-carlo@proton.me' );

INSERT INTO USERS ( FIRST_NAME, LAST_NAME, EMAIL
) VALUES ( 'Olumuyiwa', 'Unigwe', 'olumuyiwa.unigwe@hotmail.com' );
 
INSERT INTO USER_PHONES ( USER_ID, PHONE
) VALUES ( GET_USER_BY_EMAIL('ghd97@su.edu'),
           '6556989010' );

INSERT INTO USER_PHONES ( USER_ID, PHONE
) VALUES ( GET_USER_BY_EMAIL('g_hollandaise@gmail.com'),
           '7531934867' );

INSERT INTO USER_PHONES ( USER_ID, PHONE
) VALUES ( GET_USER_BY_EMAIL('ava.jared@icloud.com'),
           '7539976843' );

INSERT INTO USER_PHONES ( USER_ID, PHONE
) VALUES ( GET_USER_BY_EMAIL('honk@clown.co'),
           '9035432898' );

INSERT INTO USER_PHONES ( USER_ID, PHONE
) VALUES ( GET_USER_BY_EMAIL('aiko.2k@gmail.com'),
           '9046543210' );

INSERT INTO USER_PHONES ( USER_ID, PHONE
) VALUES ( GET_USER_BY_EMAIL('amir_munsim@icloud.com'),
           '7056107384' );

INSERT INTO USER_PHONES ( SER_ID, HONE
) VALUES ( GET_USER_BY_EMAIL('lihua.zheng@glycine.com.cn'),
           '8757435328' );

INSERT INTO USER_PHONES ( USER_ID, PHONE
) VALUES ( GET_USER_BY_EMAIL('bambino-carlo@proton.me'),
           '2764732302' );

INSERT INTO USER_PHONES ( USER_ID, PHONE
) VALUES ( GET_USER_BY_EMAIL('olumuyiwa.unigwe@hotmail.com'),
           '3558319367' );

 
 
INSERT INTO CUSTOMERS (
    CUSTOMER_ID,
    SHIPPING_STREET_1,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET_1,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( GET_USER_BY_EMAIL('ghd97@su.edu'),
           '131 N Kent St',
           'Winchester',
           'VA',
           '22601',
           '131 N Kent St',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO CUSTOMERS (
    CUSTOMER_ID,
    SHIPPING_STREET_1,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET_1,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( GET_USER_BY_EMAIL('g_hollandaise@gmail.com'),
           '720 Viscose Ave',
           'Front Royal',
           'VA',
           '22630',
           '720 Viscose Ave',
           'Winchester',
           'VA',
           '22630' );

INSERT INTO CUSTOMERS (
    CUSTOMER_ID,
    SHIPPING_STREET_1,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET_1,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( GET_USER_BY_EMAIL('ava.jared@icloud.com'),
           '608 Millwood Ave',
           'Winchester',
           'VA',
           '22601',
           '608 Millwood Ave',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO CUSTOMERS (
    CUSTOMER_ID,
    SHIPPING_STREET_1,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET_1,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( GET_USER_BY_EMAIL('honk@clown.co'),
           '416 Millwood Ave',
           'Winchester',
           'VA',
           '22601',
           '416 Millwood Ave',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO CUSTOMERS (
    CUSTOMER_ID,
    SHIPPING_STREET_1,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET_1,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( GET_USER_BY_EMAIL('aiko.2k@gmail.com'),
           '5 Parkview Ave',
           'Winchester',
           'VA',
           '22601',
           '5 Parkview Ave',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO CUSTOMERS (
    CUSTOMER_ID,
    SHIPPING_STREET_1,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET_1,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( GET_USER_BY_EMAIL('amir_munsim@icloud.com'),
           '235 Millwood Ave',
           'Winchester',
           'VA',
           '22601',
           '235 Millwood Ave',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO CUSTOMERS (
    CUSTOMER_ID,
    SHIPPING_STREET_1,
    SHIPPING_STREET_2,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET_1,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( GET_USER_BY_EMAIL('lihua.zheng@glycine.com.cn'),
           '1015 Opequon Ave',
           'Unit 3D',
           'Winchester',
           'VA',
           '22601',
           '7 Parkview Ave',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO CUSTOMERS (
    CUSTOMER_ID,
    SHIPPING_STREET_1,
    SHIPPING_STREET_2,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET_1,
    BILLING_STREET_2,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( GET_USER_BY_EMAIL('bambino-carlo@proton.me'),
           '1015 Opequon Ave',
           'Unit 3F',
           'Winchester',
           'VA',
           '22601',
           '1015 Opequon Ave',
           'Unit 3F',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO CUSTOMERS (
    CUSTOMER_ID,
    SHIPPING_STREET_1,
    SHIPPING_STREET_2,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET_1,
    BILLING_STREET_2,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( GET_USER_BY_EMAIL('olumuyiwa.unigwe@hotmail.com'),
           '328 Shenandoah Ave',
           'APT A',
           'Winchester',
           'VA',
           '22601',
           '328 Shenandoah Ave',
           'APT A',
           'Winchester',
           'VA',
           '22601' );



INSERT INTO SELLERS ( SELLER_ID, SELLER_NAME, SELLER_BIO ) 
VALUES ( 
    GET_USER_BY_EMAIL('lihua.zheng@glycine.com.cn'),
    'Shijiazhuang Donghua Jinlong Chemical Industry Co.',
    'Glycine comes from here, Shijiazhuang Donghua Jinlong Chemical Co., LTD. 
    (DHJL) was founded in 1979 with professional glycine R & D and production Base.' 
);

INSERT INTO SELLERS ( SELLER_ID, SELLER_NAME, SELLER_BIO ) 
VALUES ( 
    GET_USER_BY_EMAIL('bambino-carlo@proton.me'),
    'Carlo''s Creations',
    'Carlo Pietragallo has been a toymaker and creative thinker for over 35 years. 
    Taking inspiration from old Italian folk tales like Pinocchio, Carlo puts artisan care into on each of his creations, 
    with the hope of making toys that tie families together for generations through the joy of play.' 
);

INSERT INTO SELLERS ( SELLER_ID, SELLER_NAME, SELLER_BIO ) 
VALUES ( 
    GET_USER_BY_EMAIL('amir_munsim@icloud.com'),
           'Maliqawah',
           '' 
);

INSERT INTO SELLERS ( SELLER_ID, SELLER_NAME, SELLER_BIO ) 
VALUES ( 
    GET_USER_BY_EMAIL('honk@clown.co'),
    'Clown'|| ' & '|| 'Co.',
    '' 
);

INSERT INTO SELLERS ( SELLER_ID, SELLER_NAME, SELLER_BIO ) 
VALUES ( 
    GET_USER_BY_EMAIL('ava.jared@icloud.com'),
    'Johnson ' || '&' || ' Jacobs ' || '&' || ' Jingleheimer ' || '&' || ' Schmidt ' || '&' || ' Sons',
    '' 
);