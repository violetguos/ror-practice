# Active Record Associations

1. How does Rails normally know which table and foreign key to use when you have an association (e.g. User.first.posts)?

- if you define association/foreign key, it uses `yourassociationname_id` as the foreign id, and the association class

2. When would you need to specify the `:class_name` option in an association?

- when you have multiple associations
- when you rename your columns

3. What about the `:foreign_key`?

- essentially the `class_name` in the context of another table lookup

4. What about the `:source`?

- Rails uses the name of the association in the through table to determine which foreign key and table name to reach out to.
- If it’s named anything irregular, you’ll use the `:source` option to specify
- it's like `:class_name`

5. What is a polymorphic association and when would you use one?

- when you have a single model that can belong to a bunch of different types of models

6. What are two ways to use the association to create a new object instead of just calling YourObject.new? Why is this useful? Which method is preferred?

- use `create` or `new` on the assoication directly, e.g. `users.post.create` instead of creating a user and then a post
- use array methods, `user.posts << post`, `user.posts = [post1, post2]`

7. How do you automatically destroy all a User’s Post objects if that user is deleted?

- specify `dependent: :destroy`

8. How do you set up a self-association, like with Users following Users?

- use self join

```
class Employee < ActiveRecord::Base
    has_many :subordinates, class_name: "Employee",
                            foreign_key: "manager_id"

    belongs_to :manager, class_name: "Employee"
  end
```
