# API

1. What’s the best way to locate an API’s docs?

- their offical website

2. What are the steps you’ll almost always have to go through when setting up your app to use an API?

- register yourself and your application with the API provide
- get an API key

3. What is an API key?

- This key will uniquely identify your application to the API provider

4. How is API use typically controlled?

- Control usage, amount of data download/upload, limited access, etc

5. How do you avoid including an API’s secret token in your GitHub repo (e.g. hard coding it)?

- don't hardcode your API key!! use `figaro`

6. Why is it important to know which API version you’re using?

- a lot of functioanlities change and some get dropped overtime

7. What is a RESTful API and why does that make your life easier?

- HTTP methods (GET/POST/PUT/PATCH/DELETE) requests
- it's a familiar structure and follows conventions

8. What (basically) is OAuth?
   instead of setting up a new password, we just use an existing account to verify the identity of a user.
9. Why would a user prefer to sign into your site using Facebook instead of giving you a new password?
   They trust facebook, and they don't want to invent and remember new passwords
10. How (basically) does this process work from the user’s perspective?
    Just login to FB, FB redirects them
11. How (basically) does this process work from your (the application developer’s) perspective?
    You obtain user's FB authentication token.
12. What are the basic rules of thumb for not abusing APIs?

- common sense
- check TOU documentation

13. What is OmniAuth and why does it save you tons of time/pain?
    omniauth sets up Oauth with many major APIs
14. What is an SDK and why are they useful for working with APIs?

- SDK: software development kits, libraries that contain all the code necessary to access their API.
- Allows you to access the API with simple Javascript methods instead of doing backflips on your own backend
