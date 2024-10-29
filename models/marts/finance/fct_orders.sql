select ordr.id as order_id
     , cust.id as customer_id
     , pmt.amount
from raw.JAFFLE_SHOP.CUSTOMERS cust
join raw.JAFFLE_SHOP.ORDERS ordr
on cust.ID = ordr.USER_ID
join {{ ref('stg_stripe__payments') }} pmt
on ordr.ID = pmt.orderid
