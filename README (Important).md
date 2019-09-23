# README

I finished the project, and was commiting throughout the process but found that my assignment wasn't actually updating to this exact repository.  This led to not being able to show you accurate git difs.  Because of thise, I will try to explain what I did in detail here. 

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
 
 ***At this time I modified the model, controller, and view to interact with each other much like in the library example. The app/model/car.rb and the app/model/part.rb files need to be modified to add the relationship part using has_and_belongs_to_many assignments. I also modified the form.html.erb files of both car and part model so that they displayed things in the correct manner.  I also modied the controller by adding links to 
 
 <%=form.collection_select(:part_ids, @parts, :id, :name) %>
 
 -To appeal to the assignment specs this was added to the car form to implement a drop down menu of previously loaded and listed parts. 
 
 ***I was unable to link particular parts to specific models but intended on creating a make_num code that coincided with the make_num of the car model. Added other various style changes such as text fields and title changes. 
