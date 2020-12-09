# forms

1.  How can you view what was submitted by a form?

look through the output that gets printed into your console when you run your `$ rails server`

2.  What is a CSRF Token and why is it necessary?

- it generates an “authenticity token” which looks like gibberish but helps Rails match the form with your session and the application.
- it's necessary for secruity reasons

3.  How do you generate the token in Rails?

    ` <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>">`

4.  Why is the name attribute of a form input element so important?

- The name attribute tells Rails what it should call the stuff you entered in that input field when it creates the params hash, e.g. `params[:description]` if `name="description"`

5.  How can you nest attributes under a single hash in params?

- use brackets, ` <input type="text" name="user[first_name]">`

6.  Why is this useful?

- you can access the params in a hash, e.g. `params[:user]`, it’s actually a hash containing all the user’s attributes `first_name` and others defined in `[]`

7.  What do you have to add/modify in your controller to handle nested params?

- whitelist the params now in your controller using `require` and `permit`

8.  What special tags does Rails’ #form_with helper give you?

```
<%= form_with(url: "/search", method: "get") do %>
    <%= label_tag(:query, "Search for:") %>
    <%= text_field_tag(:query) %>
    <%= submit_tag("Search") %>
  <% end %>
```

9.  What is the difference between #form_tag, #form_for and #form_with helpers?

- form_with is that if you just pass it a model object like @article in the example above, Rails will check for you if the object has been saved yet. If it’s a new object, it will send the form to your #create action. If the object has been saved before, so we know that we’re editing an existing object, it will send the object to your #update action instead.

- `form_with` by default sends XHR requests (so that other components on the page don't reload), `form_for` and `form_tag` both requires explicitly setting `local: true` to avoid unnecessary reloading

- `form_for` requires explicitly calling the intended method on the object

- `form_tag` is the basic tag, used withour an underlying model

- TLDR: just use `form_with`

10. How do you access errors on a failed-to-save model object?

`your_object_name.errors`

11. Which form helper automatically adds markup around errors?

`field_with_errors`

12. How do you access your Update or Delete actions with a form?

` form_tag(search_path, method: "patch")`
