-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where this isn't true to make the test fail.

select
    order_key,
    net_item_sales_amount
from {{ ref('fct_orders') }}
having not(net_item_sales_amount>= 0)