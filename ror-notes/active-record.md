# active record

1.  What is an ORM?

- the ruby gem that takes care of all the database stuff
- ORM stands for Object-Relational-Mapping
- Active Record takes data from an SQL database, and it lets you interact with that data as though it was a normal Ruby object.

2.  Why is Active Record more useful than just using SQL?

- it doesn’t really matter which type of database you’re using (as long as you’ve set up the config/database.yml file properly), Active Record smooths out all the differences between those databases for you so you don’t have to think about it.

3.  What are the two steps required to make a new row in your database table with ActiveRecord?

```
u = DataBase.new(name: "Sven", email: "sven@theodinproject.com")
u = DataBase.save(...)
```

4.  What are “generators” in Rails?

    automatically create tests, specs, model file and the migration file
