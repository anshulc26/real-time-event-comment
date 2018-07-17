# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


user1 = User.create! name: 'Jay'
user2 = User.create! name: 'Patrick'
user3 = User.create! name: 'Jane'

Event.create! name: 'Github meetup', place: 'Sanf.', description: 'This is Github meetup 2017.', user: user1
Event.create! name: 'Rails meetup', place: 'Paris', description: 'This is Rails meetup 2017.', user: user2
Event.create! name: 'Coffee meet', place: 'Spain', description: 'Love for coffee.', user: user3
