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
8.  What special tags does Rails’ #form_with helper give you?
9.  What is the difference between #form_tag, #form_for and #form_with helpers?
10. How do you access errors on a failed-to-save model object?
11. Which form helper automatically adds markup around errors?
12. How do you access your Update or Delete actions with a form?
