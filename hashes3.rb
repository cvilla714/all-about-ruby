response = {
  'propCode' => 'NYCNH',
  'ratePlanCode' => 'OG',
  'serviceChargesAndTaxesIncluded' => false,
  'currencyCode' => 'USD',
  'roomRates' =>
    [{ 'roomTypeCode' => 'K1ERV',
       'inventory' => 2,
       'totalServiceCharges' => 0.0,
       'amountAfterTax' => 854.48,
       'rateDetails' =>
       [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-04', 'rate1Person' => 413.14, 'rate2Person' => 413.14, 'rate3Person' => 431.34, 'rate4Person' => 449.54 },
        { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-05', 'rate1Person' => 431.34, 'rate2Person' => 431.34,
          'rate3Person' => 449.54, 'rate4Person' => 467.74 }] },
     { 'roomTypeCode' => 'K1ERV1',
       'inventory' => 2,
       'totalServiceCharges' => 0.0,
       'amountAfterTax' => 836.28,
       'rateDetails' => [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-04', 'rate1Person' => 430.14, 'rate2Person' => 413.14, 'rate3Person' => 431.34, 'rate4Person' => 449.54 },
                         { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-05', 'rate1Person' => 459.34, 'rate2Person' => 431.34,
                           'rate3Person' => 449.54, 'rate4Person' => 467.74 }] }]
}
# puts response['roomRates'].map { |details| details['rateDetails'] }
# puts
# detalle = response['roomRates'].map { |details| details['rateDetails'] }
# puts detalle.map { |calc| calc['rate1Person'].to_i }

puts response['roomRates']
puts
puts response['roomRates'].map { |item| item['rateDetails'] }
puts
puts response['roomRates'].map { |item| item['rateDetails'].map { |loc| loc['rate1Person'] } }

puts
puts

user_request =
  { hotel_code: 'NYCNH',
    property_guid: '448ea118-2394-492f-ac87-b8b186f8eaf3',
    arrival: '2021-11-05',
    departure: '2021-11-07',
    room_stays: [{ 'room_type_guid' => 'cb53f8e7-31c9-4c53-924f-d050d402afff', 'rooms_requested' => '10', 'date' => '2021-11-05', 'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'cb53f8e7-31c9-4c53-924f-d050d402afff', 'rooms_requested' => '10', 'date' => '2021-11-06',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'adbf6c82-6cc2-44a2-913b-f3c128eb6c19', 'rooms_requested' => '10', 'date' => '2021-11-05',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => 'adbf6c82-6cc2-44a2-913b-f3c128eb6c19', 'rooms_requested' => '10', 'date' => '2021-11-06',
                   'external_code' => 'K1ERV1', 'code' => nil }],
    number_of_guests: '1',
    session_guid: '7763e77d-c1c0-423b-a011-0aade01f03de',
    rate_code_override: 'GC36A',
    peak_rooms: 20 }

puts user_request
puts
arrival_date = user_request[:arrival]
puts arrival_date
puts
departure_date = user_request[:departure]
puts departure_date
puts
room_code = user_request[:room_stays].map { |code| code['external_code'] }
puts room_code
puts
total_rooms = user_request[:room_stays].map { |total_r| total_r['rooms_requested'] }
puts total_rooms
puts
room_rate = response['roomRates'].map { |item| item['rateDetails'].map { |rate| rate['rate1Person'] } }
puts room_rate
puts
match_room = response['roomRates'].map { |item| item['roomTypeCode'] }
puts match_room
puts
puts room_code
# puts match_room.any? { |a| a == room_code }
# puts match_room[0] == room_code[0]
puts
# puts room_code.find { |item| item.include?(match_room) }

# def calculate(user_request, _response); end
