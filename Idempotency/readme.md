idempotent function influences once, no matter be called once or 1000 times.
for example a function called once and does a change in db, if it assume idemponent and we call it again, it just returns the changes,
get is idempotent function by nature, no matter it taken once or more from a service to another service, 
but post is not.
we send a request from a to b and b is buying service and in this request we want to register a shopping, if in sending back response from b to a the network be interupted, b does the request again and register two shopping.


