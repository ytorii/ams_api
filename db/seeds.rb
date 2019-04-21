Event.create(
  [
    { name: 'event1', address: 'Osaka', date: Time.parse('2019-04-19') },
    { name: 'event2', address: 'Tokyo', date: Time.parse('2019-04-20') },
    { name: 'event3', address: 'Kyoto', date: Time.parse('2019-04-19') },
    { name: 'event4', address: 'Osaka', date: Time.parse('2019-04-23') },
    { name: 'event5', address: 'Tokyo', date: Time.parse('2019-04-10') }
  ]
)

User.create([{ name: 'user1' }, { name: 'user2' }, { name: 'user3' }])

events = Event.all
users = User.all

Participant.create(
  [
    { user: users[0], event: events[0] },
    { user: users[0], event: events[2] },
    { user: users[0], event: events[3] },
    { user: users[1], event: events[0] },
    { user: users[1], event: events[1] },
    { user: users[2], event: events[3] }
  ]
)
