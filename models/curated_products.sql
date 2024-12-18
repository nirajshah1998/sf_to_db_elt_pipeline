SELECT 

    CAST(PRODUCT_ID AS INT) AS PRODUCT_ID,
    PRODUCT_NAME,  -- Assuming PRODUCT_NAME is already a string
    CATEGORY,      -- Assuming CATEGORY is already a string
    CAST(PRICE AS DECIMAL(10, 2)) AS PRICE, -- Adjust precision and scale as needed
    CAST(STOCK_QUANTITY AS INT) AS STOCK_QUANTITY,
    SUPPLIER       -- Assuming SUPPLIER is already a string
    CREATED_AT,
    UPDATED_AT

FROM {{ source('MIGRATION_DATA', 'PRODUCTS') }}
