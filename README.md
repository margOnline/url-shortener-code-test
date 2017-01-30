URL Shortener
=============

##Requirements

1. It should have a route where you can send a POST request with a URL in the body, which returns a short URL.
2. When you send a GET request to a previously returned URL, it should redirect to the POSTed URL.
3. There should be a simple frontend that can create and display shortened URLs without reloading the page.
4. For simplicity, the URLs do not need to persist between restarts (i.e. there is no requirement to use a database).

##Technical Approach

##Standard setup


1.  In the terminal, go to your projects directory and clone the project:

        git clone git@github.com:margonline/

2.  Install gem dependencies:

        bundle install

3.  Run the tests to make sure they pass with your environment:

        rspec spec

4.  Run the app

        rails s

##Next Steps

* Handle ajax error
* Better ui
* Tidy up js
