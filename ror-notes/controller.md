# controller

1. Why is it important what you name your models, controllers, and views?

- assumes things are named a certain way and then executes them behind the scenes based on those names

2. Where is the view file located that’s rendered by default for a given controller?

- app/views/posts/index.html.erb

3. What’s the difference between a #render and a #redirect_to?

- redirect: a completely new HTTP request…

4. What happens to the controller’s instance variables in each case?

- redirect: instance variables you set in your original #create controller action are wiped out along the way

- Once Rails gets to the end of that controller action, it grabs all the instance variables from the controller and sends them over the view file which is named the same thing as the controller action and which lives in a folder named after the controller (e.g. controller var -> index.html.erb)

5. What is a shortcut for redirecting to a specific Post (tip: this works in all kinds of places like `#link_to` and `#\*\_path`)

- instead of writing `redirect_to post_path(@post.id)`, just write `redirect_to @post`

6. Does a method finish executing or get interrupted when it hits a `#render` or `#redirect_to`?

- interrupt

7. What happens if you have multiple renders or redirects?

   continues running (they don't behave like return)

8. What are Strong Parameters?

   This is so the user can’t send you harmful data (like automatically setting themselves as an admin user when they create an account). To do this, Rails makes you explicitly verify that you are willing to accept certain items of a hash or array.

9. When can you just use the params hash directly and when do you need to specifically “whitelist” its contents?

- whitelist: use attr_accessible in rails 3

10. What are “scalar” values?

    e.g. strings, numbers, booleans, nil… anything that’s “flat”.

11. What does `#require` do? `#permit`?

- require: require the name of your array or hash to be in Params (otherwise it’ll throw an error)
- permit: the individual attributes inside that hash to be used

13. What’s the `#flash`?

    neat tool for sending success and error messages

14. What’s the difference between #flash and #flash.now?

- actually have to use flash.now instead of flash when you are just rendering a view instead of submitting a whole new request.
