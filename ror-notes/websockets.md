# websocket [link](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/websockets-and-actioncable)

## What is a WebSocket?
* The WebSocket API was created to allow two-way communication between a server and a client.
* A WebSocket connection keeps the http connection alive so that the server can send updates to the client without a specific request being made.

## What options did developers have before WebSockets to update a client without a user request?
1. polling
* We could use Javascript to set an interval to reach out to the server at regular intervals to see if there are any updates
2. long polling
* hold the request open on the server side
* When we have a new post we can send that response to any open http requests being held, complete the http request and close the connection
* client can simply send a new request to open the connection again
    * downside: very server intensive to keep receiving requests 
    * holding them open for an indefinite time and if order is important in the response you may have issues if there are several updates between requests. 

## What is a consumer?
* The client of a connection to the cable server is called a consumer.
## What is a subscriber?
*  a consumer subscribing to a channel

## What is a channel?
* one logicla piece of work
* similar to a controller

## What is a stream?
* a stream is how Rails publish broadcasts to subscribers
* In order to register a subscription, once a connection is established, the subscribed method is called which should set up the stream.

## How can you broadcast to a stream from the server?
* `stream_for`: a specific model as an arg
* `stream_from`: a string to identify the stream as an arg