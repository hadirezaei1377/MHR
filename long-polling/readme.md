using http1 for real time response instead using http2 or tcp connection.

normally client sends a request to server and reads real time info, this connection will be open and other requests come in this connection

for example in the game between two players, we must send each player info to another player, in the start of game, each player must create a tcp connection with server, it makes whenever each changes be done, server sends the changes for player.

web socket is hard and challenging.

short polling means we must refresh the end-point over and over to seeing the result
long polling means we tell the server be open and dont close the connection until a client sends sth to you.
