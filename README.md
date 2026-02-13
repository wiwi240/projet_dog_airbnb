2. DogAirbnb
File: dog_airbnb/README.md

Markdown

# DogAirbnb - Dog Walking Marketplace

A Rails application to connect dog owners with professional dogsitters within specific cities.

### Database Schema
* **Dogs**: Have a name and belong to a city.
* **Dogsitters**: Have a name and belong to a city.
* **Strolls**: Represents a walk between a dog and a dogsitter. It includes a date and is associated with a city.
* **Cities**: Centralizes the location of dogs, sitters, and walks.



### Setup
1. `bundle install`
2. `rails db:migrate`
3. `rails db:seed`

### Data Visualization
To see the data in a clean table, run `rails c` and use:
`tp Stroll.all, :date, "dog.name", "dogsitter.name", "city.city_name"`