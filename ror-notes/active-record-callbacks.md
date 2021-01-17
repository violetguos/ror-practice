# Active recrod callbacks

1.  What is a callback used for?

- provide hooks into specific points (either before, after, or sometimes “around”) in the life cycle of an object
- triggers a function to process an object at these points

2.  What are the major lifecycle stages of an Active Record object?

- Initialization – When the object is first built OR whenever it is reloaded from the database and into memory (so any time you find it in a query).
- Validation – whenever Rails checks if the object is valid. That could be when you’re trying to save it or if you’ve manually run the #valid? method.
- Saving – The actual act of saving an already-built object to the database. This is triggered any time the object is saved, not just the first time it is created.
- Creating – The creation and saving of a new object.
- Updating – The updating of an existing object.
- Finding – When you’ve searched for the object. Often gets triggered by Rails working with objects behind the scenes (e.g. when )

3.  How do you build an “around” callback?

- "around": a method which actually `yield`s at some point to the original action. you decide whether it's before or after.

- `around_*` callbacks are invoked **before** the action, then when you want to invoke the action itself, you yield to it, then continue execution. That's why it's called around

The order goes like this: before, around, after.

So, a typical `around_save` would look like this:

```
def around_save
   #do something...
   yield #saves
   #do something else...
end
```

credit to [Stack](https://stackoverflow.com/questions/4998553/rails-around-callbacks)

4.  How do you specify a particular action to run a callback for?

- If you only want to run a callback when a particular controller action calls it, use the `:on` option
- use if/unless in a callback https://guides.rubyonrails.org/active_record_callbacks.html#using-if-and-unless-with-a-symbol
