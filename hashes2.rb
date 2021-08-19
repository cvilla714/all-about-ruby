response = {

  "property_guid": 'bd2907b3-15a6-496a-8470-ed799a49cd98',
  "owner_key": 'NYCNH',
  "room_stays": [
    {
      "room_type_guid": '3ed20f5f-aac4-4905-9d2f-8f5058ed5402',
      "rooms_requested": 10,
      "date": '2021-11-15',
      "rate1Person": 413.14
    },
    {
      "room_type_guid": '3ed20f5f-aac4-4905-9d2f-8f5058ed5402',
      "rooms_requested": 10,
      "date": '2021-11-16',
      "rate1Person": 431.34
    },
    {
      "room_type_guid": '3ed20f5f-aac4-4905-9d2f-8f5058ed5402',
      "rooms_requested": 10,
      "date": '2021-11-17',
      "rate1Person": 499.54

    }
  ]
}
puts response
puts
puts response[:property_guid]
puts
puts response[:room_stays]
puts
puts response[:room_stays].map { |item| item[:rooms_requested] }
puts
puts response[:room_stays].map { |item| item[:rate1Person] }
puts
puts response[:room_stays].map { |item| item[:rooms_requested].to_i * item[:rate1Person].to_i }
