# session

1. What is a cookie?

- Cookies are key-value data pairs that are stored in the user’s browser until they reach their specified expiration date

2. What is a session?

- duration where the user is active, and browser is open

3. How is the session “hash” different from the cookies “hash”?

- session is an entire hash that gets put in the secure session cookie that expires when the user closes the browser
- cookie expires when it passes the deadline you set
- session and cookies aren’t really hashes, Rails just pretends they are so it’s easy for you to work with them. You can still consider them as hashes just because they act very similarly to hashes.

  What is the flash “hash” used for?
  When would you need to use flash.now instead of flash?
  What are controller filters and why are they useful?
  How do you run a controller filter for just a specific few actions?
  What’s the difference between authentication and authorization?
  Why is #has_secure_password a handy method?
  What is the basic overview of how to authenticate a user with that method?
  What additional steps (on a high level) are needed to actually “remember” a user after they’ve closed the browser?
  What is the Devise gem and why is it useful?
