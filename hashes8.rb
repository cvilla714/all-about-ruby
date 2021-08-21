require 'date'

user =
  { hotel_code: 'NYCNH',
    property_guid: '448ea118-2394-492f-ac87-b8b186f8eaf3',
    arrival: '2021-11-26',
    departure: '2021-11-30',
    room_stays: [{ 'room_type_guid' => 'a625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '5', 'date' => '2021-11-26', 'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'a625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '10', 'date' => '2021-11-27',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'a625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '10', 'date' => '2021-11-28',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'ae625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '10', 'date' => '2021-11-30',
                   'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '10', 'date' => '2021-11-26',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '10', 'date' => '2021-11-27',
                   'external_code' => 'K1ERV1', 'code' => nil },
                 { 'room_type_guid' => '35d03fed-85fa-4de3-a6d8-16516735442b', 'rooms_requested' => '10', 'date' => '2021-11-30',
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
     [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 291.6, 'rate2Person' => 291.6, 'rate3Person' => 309.6, 'rate4Person' => 327.6 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 272.7, 'rate2Person' => 291.6,
        'rate3Person' => 309.6, 'rate4Person' => 327.6 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-30', 'rate1Person' => 294.84, 'rate2Person' => 294.84,
        'rate3Person' => 313.04, 'rate4Person' => 331.24 }] },
   { 'roomTypeCode' => 'K1ERV1',
     'inventory' => 2,
     'totalServiceCharges' => 0.0,
     'amountAfterTax' => 915.0,
     'rateDetails' =>
     [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 450.0, 'rate2Person' => 450.0, 'rate3Person' => 495.0, 'rate4Person' => 540.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 437.0, 'rate2Person' => 450.0,
        'rate3Person' => 495.0, 'rate4Person' => 540.0 },
      { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-30', 'rate1Person' => 455.0, 'rate2Person' => 455.0,
        'rate3Person' => 500.5, 'rate4Person' => 546.0 }] }] }

arr = []
user[:room_stays].map do |code|
  code['external_code']
  response_hilton['roomRates'].each do |rate|
    next unless rate['roomTypeCode'] == code['external_code']

    rate['rateDetails'].each do |room_date|
      next unless room_date['effectiveDate'] == code['date']

      luffy = room_date['rate1Person'].to_f * code['rooms_requested'].to_f
      arr.push({ dates: code['date'], sum: luffy })
    end
  end
end

# {"K1ERV": [{"arrival": "2021-11-26", "departure": "2021-11-28", "base_cost": 1458 + 2727}, {"arrival": "2021-11-30", "departure": "2021-11-31", "base_cost": 2948.39999}], "K1ERV1": [same thing for that room type]}

def catch_cons(arr, consArr = [])
  arr.each.with_index do |item, index|
    puts item[:dates]
    puts nextItem = index < arr.size - 1 ? arr[index + 1][:dates] : '1/1/1900'
    if (Date.parse(item[:dates]) + 1) == Date.parse(nextItem)
      ending = group_cons(arr, index, consArr)
      arr.slice!(index, ending)
    else
      consArr.push(item)
      arr.delete_at(index)
    end
    print 'new arr: '
    pp arr
    puts
    catch_cons(arr, consArr)
    puts
  end
  consArr
end

def group_cons(arr, index, consArr)
  res = []
  arr[index..-1].map.with_index do |item2, index2|
    nextItem2 = (index + index2) < arr.size - 1 ? arr[index + index2 + 1][:dates] : '1/1/1900'
    res.push(item2)
    if Date.parse(item2[:dates]) + 1 == Date.parse(nextItem2)
    else
      break
    end
  end
  print 'res: '
  pp res
  consArr.push(res)
  res.size
end
pp catch_cons(arr)
