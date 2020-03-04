# wildlife-tracker

### Things I could have done better / differently

- Could have used a frontend framework instead of going straight forward bootstrap
- Could have spent more time on the DB structure and gotten a little more detail of the animals (other than animal type)
- Could have had regions per User as well, instead of only having sightings per user
  - Regions could be regions of a specific park, not only the country
  - This could be broken up into different types of regions and been a little more complex (to simplify the user experience)
- Could have made everything based on the user (even the animals and animal types)
  - This would make the app completely personalized and the feel would then be a lot better for each person
  - This would take away from the part of the app that you have a central database of animals, but would contribute to the personal feeling you get when you see your own animals and types with their own unique descriptions
- I could have written tests for the controllers, or better tests than the basic ones that get generated

### Reasons I did certain things

- I decided to not use the generated helpers seeing as most of the code I fit into the controllers and views (not cluttered as of yet)
  - Could still have used the helpers to be more efficient and help me be more rails standardized
- Added users to make the app feel a little more peronalized
- Did the basic CRUD/L style to conform to Rest API standards as much as possible