# advanced forms

1. How do you prepopulate a dropdown menu with data?

```
  # app/controllers/posts_controller.rb
  ...
  def new
    @user_options = User.all.map{ |u| [ u.name, u.id ] }
    @post = Post.new
  end
  ...

  # app/views/posts/new.html.erb
  ...
  <%= select_tag(:author_id, options_for_select(@user_options)) %>
  ...
```

or just

```
  # app/views/posts/new.html.erb
  ...
  <%= select(:post, :author_id, @user_options) %>
  ...

```

- or use `collection_select`

2. What is the difference between the #select_tag helper and the #select helper?

- `#select_tag` will create the surrounding tag while the `#options_for_select` gives #select_tag the array of options it needs.
- `#select` is more generic, works with out `#options_for_select`

3. What format does the array you input to #options_for_select need to be in?

- `#options_for_select` expects an array of arrays which provide the text for the dropdown option and the value it represents. So `options_for_select([["choice1",1],["choice2",2]]) `

4. Why would you need to use a nested form?

- when a user needs to submit many forms at once

5. What do you need to change in the model to allow nested forms to create new objects properly?

- so that the model knows to create one or more nest form objects if it receives their attributes when creating a normal object
  e.g.

```
  # app/models/user.rb
  class User < ActiveRecord::Base
    has_many :shipping_addresses
    accepts_nested_attributes_for :shipping_addresses
  end
```

6. How do you whitelist the nested parameters properly in your controller?

7. Why can’t you just delete something by leaving a form field (e.g. a checkbox) blank (unchecked)?

- if you submit the form it will include none of the fields
- your back end won’t know that you actually wanted to remove those fields so nothing will happen.

## Notes:

- To delete: set `:allow_destroy` option to `true` for the `#accepts_nested_attributes_for`
