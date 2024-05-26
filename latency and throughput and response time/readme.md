latency and throughput and response time

latency ----> تاخیر
throughput ----> توان عملیاتی
response time ----> کلی تر از تاخیر


response time encompasses both the transmission delays and the actual processing time of the backend application.

Response latency can be synonymous with response time–the time from sending a request to receiving a response, whether that response indicates success or error.

these are the factors for determinig the systems performance.

latency means the time from starting request to finishing the response
throughput means how many request we can handle per second ---> rps request per second


For example, I am the front end of a website. I make a request to the backend to show the list of posts. It takes 1 second from the time I make the request to the time I get the answer.

This can be a combination of latency and response time

This 1 second took 250 milliseconds in the server. My server is working fine, it is connected to the database and...
From my point of view, this is 250 milliseconds of server response time and 750 milliseconds of my latency to the server