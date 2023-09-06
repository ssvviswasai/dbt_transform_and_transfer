WITH date_parts1 AS (
    SELECT
        l_orderkey,
        CAST(SUBSTRING(l_shipdate, 9, 2) AS INT) AS l_shipday,  -- Extract day
        CAST(SUBSTRING(l_shipdate, 6, 2) AS INT) AS l_shipmonth,  -- Extract month
        CAST(SUBSTRING(l_shipdate, 1, 4) AS INT) AS l_shipyear,  -- Extract year

    l_linenumber,
    l_partkey,
    l_suppkey,
    l_quantity,
    l_extendedprice,
    l_discount,
    l_tax,
    l_returnflag,
    l_linestatus,
    l_commitdate,
    l_receiptdate,
    l_shipinstruct,
    l_shipmode,
    l_comment
    FROM tpch.lineitem
)

select * from date_parts1