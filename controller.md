# controller


Why is it important what you name your models, controllers, and views?
assumes things are named a certain way and then executes them behind the scenes based on those names

Where is the view file located that’s rendered by default for a given controller?
app/views/posts/index.html.erb

What’s the difference between a #render and a #redirect_to?
redirect: a completely new HTTP request…

What happens to the controller’s instance variables in each case?


What is a shortcut for redirecting to a specific Post (tip: this works in all kinds of places like #link_to and #*_path)
instead of writing redirect_to post_path(@post.id), just write redirect_to @post

Does a method finish executing or get interrupted when it hits a #render or #redirect_to?
interrupt

What happens if you have multiple renders or redirects?
continues running (they don't behave like return)

What are Strong Parameters?
This is so the user can’t send you harmful data (like automatically setting themselves as an admin user when they create an account). To do this, Rails makes you explicitly verify that you are willing to accept certain items of a hash or array.

When can you just use the params hash directly and when do you need to specifically “whitelist” its contents?
whitelist: use attr_accessible in rails 3


What are “scalar” values?
e.g. strings, numbers, booleans, nil… anything that’s “flat”.

What does #require do? #permit?
require: require the name of your array or hash to be in Params (otherwise it’ll throw an error)
permit: the individual attributes inside that hash to be used

What’s the #flash?
 neat tool for sending success and error messages

What’s the difference between #flash and #flash.now?
actually have to use flash.now instead of flash when you are just rendering a view instead of submitting a whole new request. 