# Advanced topics

[link](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/advanced-topics)


## When do you need to use a singular Resource vs a plural Resources in your router?
- design choice
- singular: if you only have 1 dashboard, just use a singular resource
    - `resource :dashboard`
 

## What is the “missing” route when using a singular Resource? (there are only 6 when you $ rake routes) What else is missing from many of the other routes?
- the `:id` portions of the routes

## Why would you use nested routes?
- design choice
- it makes sense. e.g. lessons under courses
    
## What order do you specify their respective IDs? What are they called in params?
- `GET  /courses/:course_id/lessons/:id(.:format)`

    
## Why might you use a “member” route?
- add another non-RESTful route to just a single member

How are “member” and “collection” routes incredibly similar? Slightly different?
How do you set up a redirect route that also passes along any parameters?
How do you name a route using an alias?
Why might you want to use nested or multiple layouts?
How would you (roughly) go about implementing this?
How can you pass variables between your layouts?
How do you #yield to #content_for content?
What is metaprogramming?
How do you use the #send method to run a method?
How do you create a new method on the fly?
When does Ruby call the #method_missing method?
How can you use #method_missing to your advantage?
What are Design Patterns?
What are the SOLID principles?
