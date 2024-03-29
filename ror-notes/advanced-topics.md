# Advanced topics

[link](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/advanced-topics)


## When do you need to use a singular Resource vs a plural Resources in your router?
- design choice
- singular: if you only have 1 dashboard, just use a singular resource
    - `resource :dashboard`
 * when a user is logged in and you only wnat to display a (singular) resource of that user
```ruby
  # in config/routes.rb
  resource :dashboard
  # notice singular
```

```ruby
  # singular
  edit_dashboard  GET /dashboard/edit(.:format)  dashboards#edit

  # versus the plural
  edit_dashboard  GET /dashboards/:id/edit(.:format)  dashboards#edit
```

## What is the “missing” route when using a singular Resource? (there are only 6 when you $ rake routes) What else is missing from many of the other routes?
The `$ rake routes` for a singular resource would only contain 6 routes (since we don’t use `#inde`x anymore), and you would no longer see any of the `:id` portions of the routes

## Why would you use nested routes?
- design choice
- it makes sense. e.g. lessons under courses
- if the resource needs a parent ID, then it should be nested under the parent resource
    
## What order do you specify their respective IDs? What are they called in params?
- `GET  /courses/:course_id/lessons/:id(.:format)`

    
## Why might you use a “member” route?
- add another non-RESTful route to a resource
- map directly to an action of this resource

## How are “member” and “collection” routes incredibly similar? Slightly different?
-  `collection` returns all the objects under this method
- `member` returns one object after calling this method
    
```ruby
  TestApp::Application.routes.draw do
    resources :courses do
      member do
        get "preview"  # Preview a single course (requires ID)
      end
      collection do
        get "upcoming"  # Show a list of *all* upcoming courses (no ID needed)
      end
    end
  end
```

## What order do you specify their respective IDs? What are they called in params?
* parent > ... > child
* `[parent]_id`, just `id` for the child

## How do you set up a redirect route that also passes along any parameters?
- use `#redirect` in `routes.rb`
- use `%{here}` for parameters


## How do you name a route using an alias?
- use `:as`
- `get 'courses/:course_name' => redirect('/courses/%{course_name}/lessons'), :as => "course"`

## Why might you want to use nested or multiple layouts?
- create unique sections that still reuse a lot of the stylings that you might want to keep consistent across your whole site (e.g. the footer)


## How would you (roughly) go about implementing this?
* use `content_for`. this reates logic in main layout, depending on what is passed by individual layout files

## How can you pass variables between your layouts?
`#navbar {display: none} ` tells the html to pick up all the css except navbar. We can simply skip it without reprogramming anything.

## How do you `#yield` to `#content_for` content?
* essentially imports a modified style
* e.g. statig_pages `content_for` application & `yield` in application -> inserting `content_for` in application

```ruby
# app/views/layouts/static_pages.html.erb

  <% content_for :stylesheets do %\>\
    #navbar {display: none}
  <% end % >
  <%= render :template => "layouts/application" %\>\
```
AND
```ruby
  # app/views/layouts/application.html.erb
  ...
  <head>
    ...
    <style><%= yield :stylesheets %></style>
  </head>
  ...
  render :template => "static_pages.html.erb"
  ...
```
compiles down to
```ruby
  # app/views/layouts/application.html.erb
  ...
  <head>
    ...
    <style> #navbar {display: none} </style>
  </head>
  ...
```
## What is metaprogramming?
* dynamically define a function on the fly
* example at https://rails-bestpractices.com/posts/2010/07/24/dry-metaprogramming/

Meta programming can change very repetitive code like this
```ruby
class Post < ActiveRecord::Base
  validate_inclusion_of :status, :in => ['draft', 'published', 'spam']

  def self.all_draft
    find(:all, :conditions => { :status => 'draft' }
  end

  def self.all_published
    find(:all, :conditions => { :status => 'published' }
  end

  def self.all_spam
    find(:all, :conditions => { :status => 'spam' }
  end

  def draft?
    self.status == 'draft'
  end

  def published?
    self.status == 'published'
  end

  def spam?
    self.status == 'spam'
  end
end
```

into this
```ruby
class Post < ActiveRecord::Base

  STATUSES = ['draft', 'published', 'spam']
  validate_inclusion_of :status, :in => STATUSES

  class <<self
    STATUSES.each do |status_name|
      define_method "all_#{status_name}" do
        find(:all, :conditions => { :status => status_name }
      end
    end
  end

  STATUSES.each do |status_name|
    define_method "#{status_name}?" do
      self.status == status_name
    end
  end

end

```


## How do you use the #send method to run a method?
* if you don't know method name, `send` the object and the argument
* `1.sned(:+, 2)` 

## How do you create a new method on the fly?
* `define_method`

## When does Ruby call the #method_missing method?
whe a method called doesn't exist

## How can you use #method_missing to your advantage?
* log the argumetns and the code block

## What are Design Patterns?
* best practices given a situation 
* a general, reusable solution to a commonly occurring problem within a given context in software design

## What are the SOLID principles?

* Single Responsibility Principle (A class should only have a single responsibility)
* Open/Closed Principle (your code entities should be open for extension but closed to modification)
* Liskov Substitution Principle (replacing an object with one of its sub-types shouldn’t break anything)
* Interface Segregation Principle (writing many client-specific interfaces is better than one behemoth general-use interface… think APIs)
* Dependency Inversion Principle (instead of high level constructs depending on lower level ones, make them rely on abstractions instead)
