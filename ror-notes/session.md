# session

1. What is a cookie?

- Cookies are key-value data pairs that are stored in the user’s browser until they reach their specified expiration date

2. What is a session?

- duration where the user is active, and browser is open

3. How is the session “hash” different from the cookies “hash”?

- session is an entire hash that gets put in the secure session cookie that expires when the user closes the browser
- cookie expires when it passes the deadline you set
- session and cookies aren’t really hashes, Rails just pretends they are so it’s easy for you to work with them. You can still consider them as hashes just because they act very similarly to hashes.

4. What is the flash “hash” used for?

- flash is a special hash (okay, a method that acts like a hash) that persists only from one request to the next

5. When would you need to use flash.now instead of flash?

- when you fail parameter validations
- Since it’s not a totally new request, you’ll want to have your error message available immediately, use `now`

6. What are controller filters and why are they useful?

- run some code in your controller at very specific times
- used to specify what to run first. e.g. `before_action` specifies which methods to run before anything in the controller class

7. How do you run a controller filter for just a specific few actions?

- `before_action :require_login, only: [:edit, :update]`. The opposite applies by using the `:except` option

8. What’s the difference between authentication and authorization?

- authentication: make sure that the user is who they say they are
- authroization: level of privilege in a system. e.g. admin vs regular

9. Why is #has_secure_password a handy method?

- it digests (encrypts) password, and makes sure that you don't perform plain text comparisions

10. What is the basic overview of how to authenticate a user with that method?

- sessions_controller.rb should have the corresponding routes for `:new`, `:create` and `:destroy`
- check credentials using the `#authenticate` method
- use the `session` variable to store their ID

11. What additional steps (on a high level) are needed to actually “remember” a user after they’ve closed the browser?

- create another column in your Users table for an encrypted remember_token (name doesn't matter)
- drop the unencrypted token as a permanent cookie (using cookies.permanent[:remember_token]) into the user’s browser

more:

- Add a column to your Users table to contain the user’s password_digest.
- When the user signs up, turn the password they submitted into digest form and then store THAT in the new database column by adding the has_secure_password method to your User model.
- Don’t forget any necessary validations for password and password confirmation length.
- Build a sessions controller (and corresponding routes) and use the #authenticate method to sign in the user when the user has submitted the proper credentials using the signin form.
- Allow the user to be remembered by creating a remember_token column in the Users table and saving that token as a permanent cookie in the user’s browser. Reset on each new signin.
- On each page load that requires authentication (and using a #before_action in the appropriate controller(s)), first check the user’s cookie remember_token against the database to see if he’s already signed in. If not, redirect to the signin page.
- Make helper methods as necessary to let you do things like easily determine if a user is signed in or compare another user to the currently signed in user.
- Profit.

12. What is the Devise gem and why is it useful?

- authentication is complicated, you shouldn't implement one on your own. use Devise.
