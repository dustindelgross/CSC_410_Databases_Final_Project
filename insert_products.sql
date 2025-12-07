INSERT INTO PRODUCTS (
    SELLER_ID,
    SUPPLIER_ID,
    PRODUCT_NAME,
    PRODUCT_DESCRIPTION,
    PRICE,
    CATEGORY,
    PUBLISHED
) VALUES ( GET_USER_BY_EMAIL('lihua.zheng@glycine.com.cn'),
GET_USER_BY_EMAIL('lihua.zheng@glycine.com.cn'),
           'Industrial Grade Glycine',
           'Used in pesticide production, water treatment, electronics industry.
 Package:
 25kg/ 500kg/ 750kg/ 900kg/bag
 25kg/drum/carton
 Cas no.: 56-40-6
 Product standard: HG/T2029-2004
 Origin: Shijiazhuang, Hebei, China',
           249.99,
           'Glycine',
           TRUE );

INSERT INTO PRODUCTS (
    SELLER_ID,
    SUPPLIER_ID,
    PRODUCT_NAME,
    PRODUCT_DESCRIPTION,
    PRICE,
    CATEGORY,
    PUBLISHED
) VALUES ( GET_USER_BY_EMAIL('lihua.zheng@glycine.com.cn'),
GET_USER_BY_EMAIL('lihua.zheng@glycine.com.cn'),
           'Hydantoin',
           'Used for pharmaceutical, chemical raw materials, plant growth regulators.
            Package: 25kg/bag
Cas no.: 461-72-3
Origin: Shijiazhuang, Hebei, China
Product standard: Q/DHJL 14',
           139.99,
           'Pharmaceutical Intermediates', TRUE );

INSERT INTO PRODUCTS (
    SELLER_ID,
    SUPPLIER_ID,
    PRODUCT_NAME,
    PRODUCT_DESCRIPTION,
    PRICE,
    CATEGORY,
    PUBLISHED
) VALUES ( GET_USER_BY_EMAIL('honk@clown.co'),
GET_USER_BY_EMAIL('honk@clown.co'),
           
           'Big Red Nose',
           'Share the magic of whimsy with a big red nose.',
           1.29,
           'Costume Supplies', TRUE );

INSERT INTO PRODUCTS (
    SELLER_ID,
    SUPPLIER_ID,
    PRODUCT_NAME,
    PRODUCT_DESCRIPTION,
    PRICE,
    CATEGORY,
    PUBLISHED
) VALUES ( GET_USER_BY_EMAIL('honk@clown.co'),
GET_USER_BY_EMAIL('honk@clown.co'),
           
           'WetLapel Flower Shaped Miniature Fountain Brooch',
           'Share the magic of whimsy with a lapel attachment that can spray water at the push of a button.',
           4.29,
           'Costume Supplies', TRUE );

INSERT INTO PRODUCTS (
    SELLER_ID,
    SUPPLIER_ID,
    PRODUCT_NAME,
    PRODUCT_DESCRIPTION,
    PRICE,
    CATEGORY,
    PUBLISHED
) VALUES (  GET_USER_BY_EMAIL('bambino-carlo@proton.me'),
            GET_USER_BY_EMAIL('bambino-carlo@proton.me'),
            'Dominic the Italian Christmas Donkey',
            'A new spin on a classic Italian Christmas icon. Dominic the Donkey by Carlo''s Creations features a modular play set and detachable ornament hooks. Dominic the Donkey is a great way to entertain the kids while Santa is still getting the tree ready.',
            24.99,
            'Toys '|| '&'|| ' Games', FALSE );

INSERT INTO PRODUCTS (
    SELLER_ID,
    SUPPLIER_ID,
    PRODUCT_NAME,
    PRODUCT_DESCRIPTION,
    PRICE,
    CATEGORY,
    PUBLISHED
) VALUES (  GET_USER_BY_EMAIL('bambino-carlo@proton.me'),
            GET_USER_BY_EMAIL('bambino-carlo@proton.me'),
           'Commedia Dell''arte Character Mask Set',
           'Commedia Dell''arte is a classic form of entertainment whose influence can still be seen in movies, video games, and other forms of storytelling used today. These artisan-crafted character masks, along with the accompanying storybook, will bring the joys of commedia to young audiences.',
           49.99,
           'Toys '|| '&'|| ' Games', TRUE );

INSERT INTO PRODUCTS (
    SELLER_ID,
    SUPPLIER_ID,
    PRODUCT_NAME,
    PRODUCT_DESCRIPTION,
    PRICE,
    CATEGORY,
    PUBLISHED
) VALUES ( GET_USER_BY_EMAIL('amir_munsim@icloud.com'),
GET_USER_BY_EMAIL('amir_munsim@icloud.com'),
           
           '12/12 Maliqawah Original Green Tea 12-Pack Bottle 12oz',
           'Maliq''s original green tea blend. Proudly brewed in Pakistan and infused with local herbs.',
           11.99,
           'Food '|| '&'|| ' Drink', TRUE);

INSERT INTO PRODUCTS (
    SELLER_ID,
    SUPPLIER_ID,
    PRODUCT_NAME,
    PRODUCT_DESCRIPTION,
    PRICE,
    CATEGORY,
    PUBLISHED
) VALUES ( GET_USER_BY_EMAIL('amir_munsim@icloud.com'),
GET_USER_BY_EMAIL('amir_munsim@icloud.com'),
           'Artisan Crafted Ceramic Tea Set',
           'Find your balance with this hand-crafted, glazed, and fired ceramic tea set. Delicate patterns along the surface resemble the enchanting peaks of the Hunza Valley.',
           399.99,
           'Tea Sets',TRUE );


INSERT INTO PRODUCTS ( SELLER_ID, SUPPLIER_ID, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRICE, CATEGORY, PUBLISHED )
VALUES (
    GET_USER_BY_EMAIL('ava.jared@icloud.com'),
    GET_USER_BY_EMAIL('ava.jared@icloud.com'),
    'Long Sleeve Overcoat with Pockets',
    'Stay cozy in style this season with the Fall ''25 Cozy Collection from JJJSS.',
    38.99,
    'Clothing ' || '&' || ' Accessories', TRUE
);

INSERT INTO PRODUCTS ( SELLER_ID, SUPPLIER_ID, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRICE, CATEGORY, PUBLISHED )
VALUES (
    GET_USER_BY_EMAIL('ava.jared@icloud.com'),
    GET_USER_BY_EMAIL('ava.jared@icloud.com'),
    'Cozy Boot Socks',
    'Stay cozy in style this season with the Fall ''25 Cozy Collection from JJJSS.',
    19.99,
    'Clothing ' || '&' || ' Accessories', TRUE
);