
What is a layout?
 <head> tags or the DOCTYPE, etc. common configs

What’s the difference between a “view template” and a “layout”?

What is a “Preprocessor”?
Embedded Ruby (ERB). It’s a special way of executing ruby code inside your HTML. 

Why are preprocessors useful?
need them if you want anything dynamic

How do you make sure a preprocessor runs on your file?
erb.  all done on the server BEFORE the final HTML file is shipped over to the browser

What’s the outputted filetype of a preprocessed *.html.erb file? What about a *.css.scss file?
*.html, *.css


What is the difference between the <%=, <%, and <%# tags?
<%= displays returm val
<% does not display, obly execute code
<%# is used to comment and will not execute.

What is a view partial?
break down view files. let you reuse some components


How do you insert a partial into your view?
<%= render "shared/some_partial"%>

How can you tell that a view file is a partial?
file is named with an underscore

How do you pass a local variable to a partial?
`<%= render "shared/your_partial", :locals => { :var_here => var_there } %>`

To use the variable in your partial file, you drop the @ and call it like a normal variable.



What’s the magical Rails shortcut for rendering a User? A bunch of Users?
```  
# app/views/index.html.erb
  <h1>Users</h1>
  <ul>
    <%= render @users %> <!-- a bunch of users -->
  </ul>
```

What are asset tags and why are they used?
rails code that renders html tags directly