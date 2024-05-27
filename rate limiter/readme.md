Suppose we have an API for sending tweets without limits, or a service for sending short messages without limits and users comes and in this API it does the desired work a million times.

Calling API is expensive and consumes resources.
Calling API may not be the same for everyone and everyone has their own quota.

We need limits. like :
fix time window :
The simplest limiting service
For example, suppose someone sent a request at 12.15.17. 
User message ID is equal to 12.15
Therefore, during this one minute, every request has the same ID
For example, we set that it cannot make more than 100 requests per minute.
Well, despite the limitation, the user can make 200 requests in two seconds... how? 100 in the last second of one window and 100 in the first second of the next window.

token bucket:
In this method, we give a limited number of tokens to each user, and based on that, he can send requests.
Its positive feature is that it cannot bring down the server like the previous method.
Its negative feature is that the user has the ability to use all of his capacity to send requests at the same time.

leaky bucket:
For example, we set a limit of 6 requests per second for each user, which means that each user can send a request every ten seconds, and requests earlier than this time are not accepted.

In this case, the system may remain idle despite the ability to process requests.

It is a good algorithm that takes an average of n number of requests in a time range and also has a limit of k number of requests, this is gcra algorithm.




