# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

worker_list = [
  ["John", "Moving", "Weekends", "555-555-5555"],
  ["Jane", "Landscaping", "Tuesdays and Wednesdays", "name@email.net"],
  ["Jerry", "Laughs", "all week", "The Shoew"],
  ["Bob", "Housework", "Afternoons", "1-800-cleaner"],
  ["Lucy", "Organizing", "Saturdays", "email"],
  ["Yolanda", "Babysitting", "Fridays and Saturdays", "503-503-5035"]
]

worker_list.each do |name, specialty, availability, contact|
    Worker.create(name: name, specialty: specialty, availability: availability, contact: contact)
end


job_list = [
  ["Lawn", "every weekend", "$20", "Email"],
  ["clearing attic", "Friday Night", "100 bucks", "503-327-27534"],
  ["Birthday Clown", "May 24th", "20-30 an hour depending on Experience(tips possible)", "birthday@party.com"],
  ["Moving", "This weekend", "50 an hour", "123 fake st"],
  ["Digging out stump", "Tuesday or Wednesday", "$100", "303 -030 - 3030"],
  ["Replacing Fridge", "Weekday evenings", "$40", "my@job.com"]
]

job_list.each do |description, timerange, pricerange, contact|
    Job.create(description: description, timerange: timerange, pricerange: pricerange, contact: contact)
end
