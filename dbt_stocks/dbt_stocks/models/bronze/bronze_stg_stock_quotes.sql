SELECT
    record:c::float AS current_price,
    record:d::float AS change_amount,
    record:dp::float AS change_percent,
    record:h::float AS day_high,
    record:l::float AS day_low,
    record:o::float AS day_open,
    record:pc::float AS prev_close,
    TO_TIMESTAMP_NTZ(record:t::NUMBER) AS market_timestamp,
    record:symbol::string AS symbol,
    TO_TIMESTAMP_NTZ(record:fetched_at::NUMBER) AS fetched_at
FROM {{ source('raw', 'bronze_stocks_quotes_raw') }}