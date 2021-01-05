# Active Record Queries

"anything you can do in SQL, you can do in Active Record"

1. What is an ActiveRecord::Relation?

- a serialized Class object, looks like an array but it's not
- Relations only get executed when it's absolutely necessary to query databases
- e.g. `@posts = Post.limit(5)`, relation. `@posts.first.title`, query DB.

2. What does Lazy Evaluation mean?

- Active Record queries return relations to be lazy

3. How do you make a relation evaluate into an array?

- `#to_a`

4. How do you check whether a database already contains a record?

- `#exists?` will return true/false
- `#any?` will be true if any records match the specified criteria
- `#many?` will be true if multiple records match the specified criteria
- works on relation, scope, model, association

5. Why is #find_by useful and how is it used?

- it lets you build your own finder method
- `#find_by(variable, value)`

What’s the difference between what’s returned using a #where query and a #find query?
How do you join tables together in Rails?
When can you use symbols / hashes and when do you need to use explicit strings for query parameters?
What are Scopes and why are they useful?
What needs to happen for a class method to act like a scope?
