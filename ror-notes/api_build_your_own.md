# APIs and Building Your Own

1. How does Rails know which type of file you are expecting back when you make an HTTP request?

- specify with keyword

```
    format.xml  { render :xml => @users }
    # vs
    format.json { render :json => @users }
```

2. What is the purpose of the #respond_to method?
   informs your controller to render JSON or XML instead of HTML
3. How do you return a User object but specify that you don’t want to include certain attributes (i.e. you can’t just return User.first)?

Overwrite or inherit the `#as_json` method of the model

4. What are the two steps performed behind the scenes by the #to_json method?

- it runs #as_json
- rendering into JSON using ActiveSupport::json.encode

5. How do you tell a controller action to render nothing but an error message?
   `render :nothing => true, :status => 404`
6. How do you build your own custom error messages?
   Declare your own `class ErrorsController < ApplicationController`. See [this blog](https://phawk.co.uk/blog/custom-rails-error-pages/).
7. Why can’t you use session-based controller authentication methods if you want people to access your API programmatically?
   A lot of API requests come from servers/cmd lines (not browsers), so you can't rely on browser cookies.
8. What is “Service Oriented Architecture?”
   Break down a website (or application) into subcomponents. Each subcompoenent has its own API. The whole website is built by facilitating internal API communications.
