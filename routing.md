# Routing


What is the “Root” route?



What are the seven RESTful routes for a resource?


    GET all the posts (aka “index” the posts)
    GET just one specific post (aka “show” that post)
    GET the page that lets you create a new post (aka view the “new” post page)
    POST the data you just filled out for a new post back to the server so it can create that post (aka “create” the post)
    GET the page that lets you edit an existing post (aka view the “edit” post page)
    PUT the data you just filled out to edit the post back to the server so it can actually perform the update (aka “update” the post)
    DELETE one specific post by sending a delete request to the server (aka “destroy” the post)



Which RESTful routes share the same URL but use different verbs?
1, 4
2, 6, 7


How do you specify an ID or other variable in a route?
ruby param :param

How can you easily write all seven RESTful routes in Rails?
helper method 
ApplicationController


What is the Rails helper method that creates the HTML for links?
new