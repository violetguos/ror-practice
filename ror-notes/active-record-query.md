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

6. What’s the difference between what’s returned using a #where query and a #find query?

- `#find` returns the actual record
- `#where` returns an `ActiveRecord::Relation`, which is like an array

7. How do you join tables together in Rails?

- use explicit `#join`
- use eager loading to eliminate unnecessary DB queries
  - `#includes`: ask rails to load one or more associations in the DB table entry
  - `#pluck`: literally plucks attribute values into an array

8. When can you use symbols / hashes and when do you need to use explicit strings for query parameters?

- You can typically use either symbols or strings or both.
- Preference: use symbols and hashes wherever possible

- use explicit strings when joining tables

9. What are Scopes and why are they useful?

- A scope is basically a custom chain of ActiveRecord methods that you can slap onto an existing Relation by calling its name like a normal method

  example using scope

  ```
   # app/models/post.rb
   scope :important, -> { where(is_important: true) }

  ```

  equivalent using a class method

  ```
  def self.important
   self.where(is_important: true)
  end
  ```

10. What needs to happen for a class method to act like a scope?

- as long as your class method returns a Relation
