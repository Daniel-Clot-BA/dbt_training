select id
     , orderid
     , paymentmethod
     , status
     , amount
     , created
     , _batched_at
from raw.STRIPE.PAYMENT
;