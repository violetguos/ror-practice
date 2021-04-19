# mailers
Lesson [link](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/mailers)


## What is a mailer?
- A mailer acts similar to a model and controller baked into one
- configures email templates

## How do you set up a new mailer from the command line?
- `$ rails generate mailer SomeName`

## How are mailers similar to controllers? To models?
- you set up methods for each email you want it to send
- in each method, we need key fields and variables


## How do you pass instance variables from the mailer to the mailer view?
- just like passing a controller action’s instance variables to a normal view

## Why do you need both a text and HTML version of your mails?
- for accessibility
- to pass SPAM filters

## How do you send an email directly from the Rails console?
- `UserMailer.welcome_email(@user).deliver_now`

## How can you take advantage of add-ons and third-party programs to send email?
- install the add ons

## What is the letter_opener gem good for?
- test your emails
- don't just send emails to yourself. you might get marked as spam in the process

## Why can’t you use `*_path` link helpers in mailer views?
- results in error messages or funny links

## How do you style up a pretty looking HTML email?
- use the inline styling
- `<style>` tags
