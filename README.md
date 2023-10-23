# README

This is an simple web app developed with Rails.
It has a search bar that depending on the input, it returns everything related to the input.

ex:
If you type 'par', it should return:
Curitiba 	Paraná 	PR
Londrina 	Paraná 	PR
Maringá 	Paraná 	PR

If you type 'cur', should return:
Curitiba 	Paraná 	PR

### Things you may want to cover:

* Versions: Ruby 2.7.0, Rails 5.2.8

* Database initialization
  * Since it has 'seeds.rb' set,  you can edit then run:
    ```
      rails db:migrate
    ```
* Deployment instructions
    * To run the app in a Docker, execute de following commands:
    ```
    docker build --tag myapp .
    ```
   ```
    docker run -p 3000:3000 myapp
    ```

* Routes
  * welcome_index GET    /welcome/index(.:format)                                                                 welcome#index
  * cities GET    /cities(.:format)                                                                        cities#index
  * cities_show GET    /cities/show(.:format)                                                                   cities#show
  * search GET    /search(.:format)                                                                        cities#search
  * GET    /cities(.:format)                                                                        cities#index
