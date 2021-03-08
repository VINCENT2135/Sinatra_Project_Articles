
Usage
To use this app, just clone, run rake db:migrate and then run shotgun. 


TODO:


Create migrations.
Create models with relationships.
Plan out routes for controller following restful conventions and map to CRUD actions.
Build controller actions for main model with all CRUD functionality and build corresponding forms.
Add user authentication.
Add user authorization.
Build navigation.
Add validations to input fields and error handling.
Add index view for ingredients and display names and images X create a new form to add an ingredient to the db.
Add page for users to see all recipes they created.
Add page for users to see all ingredients required for their recipes.
Requirements.
Build an MVC Sinatra application.
Use ActiveRecord with Sinatra.
Use multiple models.
Use at least one has_many relationship on a User model and one belongs_to relationship on another model.
Must have user accounts - users must be able to sign up, sign in, and sign out.
Validate uniqueness of user login attribute (username or email).
Once logged in, a user must have the ability to create, read, update and destroy the resource that belongs_to user.
Ensure that users can edit and delete only their own resources - not resources created by other users.
Validate user input so bad data cannot be persisted to the database.
BONUS: Display validation failures to user with error messages. (This is an optional feature, challenge yourself and give it a shot!)
