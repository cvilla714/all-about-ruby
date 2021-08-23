require 'date'
system 'clear'
user =
  { hotel_code: 'NYCNH',
    property_guid: '448ea118-2394-492f-ac87-b8b186f8eaf3',
    arrival: '2021-11-26',
    departure: '2021-11-30',
    room_stays: [{ 'room_type_guid' => 'a625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '5', 'date' => '2021-11-16', 'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'a625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '10', 'date' => '2021-11-17',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'a625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '10', 'date' => '2021-11-18',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'ae625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '10', 'date' => '2021-11-20',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'ae625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '10', 'date' => '2021-11-21',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'ae625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '10', 'date' => '2021-11-22',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'ae625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '10', 'date' => '2021-11-25',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'ae625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '20', 'date' => '2021-12-02',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'ae625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '20', 'date' => '2021-12-03',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'ae625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '20', 'date' => '2021-12-04',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'ae625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '20', 'date' => '2021-12-05',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'ae625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '20', 'date' => '2021-12-06',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '10', 'date' => '2021-11-16',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '10', 'date' => '2021-11-17',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '10', 'date' => '2021-11-18',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '10', 'date' => '2021-11-20',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '10', 'date' => '2021-11-21',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '10', 'date' => '2021-11-22',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '10', 'date' => '2021-11-25',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '20', 'date' => '2021-12-02',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '20', 'date' => '2021-12-03',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '20', 'date' => '2021-12-04',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '20', 'date' => '2021-12-05',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '20', 'date' => '2021-12-06',
                   'external_code' => 'K1ERV1', 'code' => nil }],
    number_of_guests: '1',
    session_guid: 'e87b2b33-171b-4578-a698-9cbf17cc3587',
    rate_code_override: 'GC36A',
    peak_rooms: 20 }

response_hilton =
  { 'propCode' => 'NYCNH',
    'ratePlanCode' => 'OG',
    'serviceChargesAndTaxesIncluded' => false,
    'currencyCode' => 'USD',
    'roomRates' =>
  [{ 'roomTypeCode' => 'K1ERV',
     'inventory' => 12,
     'totalServiceCharges' => 0.0,
     'amountAfterTax' => 596.44,
     'rateDetails' =>
     [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-16', 'rate1Person' => 291.6, 'rate2Person' => 291.6, 'rate3Person' => 309.6, 'rate4Person' => 327.6 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-17', 'rate1Person' => 272.7, 'rate2Person' => 291.6,
        'rate3Person' => 309.6, 'rate4Person' => 327.6 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-18', 'rate1Person' => 282.7, 'rate2Person' => 291.6,
        'rate3Person' => 309.6, 'rate4Person' => 327.6 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-20', 'rate1Person' => 394.84, 'rate2Person' => 294.84,
        'rate3Person' => 313.04, 'rate4Person' => 331.24 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-21', 'rate1Person' => 394.84, 'rate2Person' => 294.84,
        'rate3Person' => 313.04, 'rate4Person' => 331.24 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-22', 'rate1Person' => 394.84, 'rate2Person' => 294.84,
        'rate3Person' => 313.04, 'rate4Person' => 331.24 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-25', 'rate1Person' => 494.84, 'rate2Person' => 294.84,
        'rate3Person' => 313.04, 'rate4Person' => 331.24 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-12-02', 'rate1Person' => 394.84, 'rate2Person' => 294.84,
        'rate3Person' => 313.04, 'rate4Person' => 331.24 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-12-03', 'rate1Person' => 394.84, 'rate2Person' => 294.84,
        'rate3Person' => 313.04, 'rate4Person' => 331.24 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-12-04', 'rate1Person' => 394.84, 'rate2Person' => 294.84,
        'rate3Person' => 313.04, 'rate4Person' => 331.24 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-12-05', 'rate1Person' => 394.84, 'rate2Person' => 294.84,
        'rate3Person' => 313.04, 'rate4Person' => 331.24 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-12-06', 'rate1Person' => 394.84, 'rate2Person' => 294.84,
        'rate3Person' => 313.04, 'rate4Person' => 331.24 }] },
   { 'roomTypeCode' => 'K1ERV1',
     'inventory' => 2,
     'totalServiceCharges' => 0.0,
     'amountAfterTax' => 915.0,
     'rateDetails' =>
     [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-16', 'rate1Person' => 450.0, 'rate2Person' => 450.0, 'rate3Person' => 495.0, 'rate4Person' => 540.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-17', 'rate1Person' => 437.0, 'rate2Person' => 450.0,
        'rate3Person' => 495.0, 'rate4Person' => 540.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-18', 'rate1Person' => 477.0, 'rate2Person' => 450.0,
        'rate3Person' => 495.0, 'rate4Person' => 540.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-20', 'rate1Person' => 455.0, 'rate2Person' => 455.0,
        'rate3Person' => 500.5, 'rate4Person' => 546.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-21', 'rate1Person' => 485.0, 'rate2Person' => 455.0,
        'rate3Person' => 500.5, 'rate4Person' => 546.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-22', 'rate1Person' => 485.0, 'rate2Person' => 455.0,
        'rate3Person' => 500.5, 'rate4Person' => 546.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-25', 'rate1Person' => 495.0, 'rate2Person' => 455.0,
        'rate3Person' => 500.5, 'rate4Person' => 546.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-12-02', 'rate1Person' => 485.0, 'rate2Person' => 455.0,
        'rate3Person' => 500.5, 'rate4Person' => 546.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-12-03', 'rate1Person' => 485.0, 'rate2Person' => 455.0,
        'rate3Person' => 500.5, 'rate4Person' => 546.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-12-04', 'rate1Person' => 485.0, 'rate2Person' => 455.0,
        'rate3Person' => 500.5, 'rate4Person' => 546.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-12-05', 'rate1Person' => 485.0, 'rate2Person' => 455.0,
        'rate3Person' => 500.5, 'rate4Person' => 546.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-12-06', 'rate1Person' => 485.0, 'rate2Person' => 455.0,
        'rate3Person' => 500.5, 'rate4Person' => 546.0 }] }] }

arr = {}
user[:room_stays].map do |code|
  code['external_code']
  response_hilton['roomRates'].each do |rate|
    next unless rate['roomTypeCode'] == code['external_code']

    rate['rateDetails'].each do |room_date|
      next unless room_date['effectiveDate'] == code['date']

      luffy = room_date['rate1Person'].to_f * code['rooms_requested'].to_f

      if !arr[code['external_code']]
        arr[code['external_code']] = [{ dates: code['date'], sum: luffy }]
      else
        arr[code['external_code']].push({ dates: code['date'], sum: luffy })
      end
    end
  end
end

# puts arr
# {"K1ERV": [{"arrival": "2021-11-26", "departure": "2021-11-28", "base_cost": 1458 + 2727}, {"arrival": "2021-11-30", "departure": "2021-11-31", "base_cost": 2948.39999}], "K1ERV1": [same thing for that room type]}

def catch_cons(arr, consArr = [])
  arr.each do |room_code, stay_arr|
    base_rate = 0
    dates = []
    stay_arr.each do |stay|
      date = stay[:dates]
      dates.push(date)
      base_rate += stay[:sum]
      next_day = (Date.parse(date) + 1).to_s
      # puts "i am the next day #{next_day}"
      all_dates = stay_arr.map { |x| x[:dates] }
      if all_dates.include?(next_day)
        next
      else
        departure = next_day
        arrival = dates.min
        consArr.push({ code: room_code, arrival: arrival, departure: departure, total_sum: base_rate })
        dates = []
        base_rate = 0
      end
    end
  end
  consArr
end
puts catch_cons(arr)
