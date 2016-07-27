1.) What are some common HTTP status codes?

Some common ones include:

200 - What you ideally hope to see, it means that content was processed as expected.

404 - not found, meaning that that page you're trying to load does not exist.

500 - Internal Server Error - the server encountered an unexpected condition that prevented it from carrying out the request

503 - service unavailable - unable to handle your HTTP request at the time, for any number of reasons incuding:
- server crash
- server maintenance
- server overload
- server being attacked
This condition is usually temporary


2.) What is the difference between a GET request and a POST request? When might each be used?

The GET and POST requests are two of many requests that are always the first line of any request

GET - for straight-forward retrieval of information - anything you type into the url bar will send result in a GET request

POST - requests that a web server accept and store the data enclosed in the body of the request message. It is commonly used when uploading a file or submitting a web form


3.) What is a cookie? How does it relate to HTTP requests?

A cookie is a small text file containing no executable code that is stored by a browser on the user's machine. The web page or server tells the browser to store this code and send it back with each subsequent request, and the web servers can use this info to identify individual users. An example of this is when you login to a certain website a cookie is usually set and you can move throughout the site as long as that cookie is present.



