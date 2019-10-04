# README

***I finished the project, and was commiting throughout the process but found that my assignment wasn't actually updating to this exact repository.  This led to not being able to show you accurate git difs.  Because of this, I will try to explain what I did in detail here. 

***What I learned: I spent 20+ hours on this project and started over and over trying to get the structures and relationships correct.  I still ended up getting this wrong.  I consulted help and watched videos. I realized that getting things sorted ahead of starting the project saves a lot of time in the long run.  I also learned how the MVC works and have a better understanding of their interactions together. Writing the ruby code takes very little time, but structuring everything is extremely time-consuming. 

***What I would have done differently:  MANY, MANY things.  I didn't structure the program correctly so I ended up trying to work with what I had.  And I didn't have my GitHub set up properly to work with RubyMine so that caused another big issue.  Next time I will practice more before starting the program. 

rails new carsparts

  -started new rails project 

rails generate scaffold Car make:string country:string model:string year:integer make_num: integer

  -This generated a new scaffold that would help store Car data into the database.  The last field caused me some issues because of the accidenta space, but I'll describe this later on. 

*rails generate scaffold Part name:string make_num:integer product_num:integer

  -This generated a new scaffold that would help sore Part data into the database

rails generate model CarsParts car:references part:references

  -This created a joint table that allowed the two tables to reference eachother throughout the program
  
 ***Here I misunderstood the assignment.  I would've created another model that was specifically built for car make that included model and country, but I wrongly thought that there was only a many-to-many relationship between car and part. I will continue to work on the project but wanted a working project to turn in rather than a broken, incomplete one. 
 
 rails db:migrate 
 
 -This update the database with fields and relational references/connections
 
 rails server
 
 -Just to check what the html looked like from the auto-generated scaffold 
 
 ***At this time I modified the model, controller, and view to interact with each other much like in the library example. The app/model/car.rb and the app/model/part.rb files need to be modified to add the relationship part using has_and_belongs_to_many assignments. I also modified the form.html.erb files of both car and part model so that they displayed things in the correct manner.  I also modified the controller by adding links to 
 
 <%=form.collection_select(:part_ids, @parts, :id, :name) %>
 
 -To appeal to the assignment specs this was added to the car form to implement a drop down menu of previously loaded and listed parts. 
 
 ***I was unable to link particular parts to specific models but intended on creating a make_num code that connected with the make_num of the car model. Added other various style changes such as text fields and title changes. 
