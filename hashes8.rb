require 'date'

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
        'rate3Person' => 500.5, 'rate4Person' => 546.0 }] }] }

arr = []
user[:room_stays].map do |code|
  code['external_code']
  response_hilton['roomRates'].each do |rate|
    next unless rate['roomTypeCode'] == code['external_code']

    rate['rateDetails'].each do |room_date|
      next unless room_date['effectiveDate'] == code['date']

      luffy = room_date['rate1Person'].to_f * code['rooms_requested'].to_f
      arr.push({ room_code: code['external_code'], dates: code['date'], sum: luffy })
    end
  end
end

puts arr
# {"K1ERV": [{"arrival": "2021-11-26", "departure": "2021-11-28", "base_cost": 1458 + 2727}, {"arrival": "2021-11-30", "departure": "2021-11-31", "base_cost": 2948.39999}], "K1ERV1": [same thing for that room type]}

def catch_cons(arr, consArr = [])
  arr.each.with_index do |item, index|
    # puts item[:dates]
    nextItem = index < arr.size - 1 ? arr[index + 1][:dates] : '1/1/1900'
    if (Date.parse(item[:dates]) + 1) == Date.parse(nextItem)
      ending = group_cons(arr, index, consArr)
      # puts ending
      arr.slice!(index, ending)
    else
      # puts 'you are here'
      consArr.push(item)
      arr.delete_at(index)
    end
    # print 'new arr: '
    # pp arr
    # puts
    catch_cons(arr, consArr)
    # puts
  end
  consArr
end

locos = [1458.00, 2500.15, 2727.57]
# puts locos.reduce(:+)
datesdfd = %w[2021-11-16 2021-11-17 2021-11-18]
sefue = datesdfd.pop
llego = datesdfd.shift
# puts llego
# puts sefue
def group_cons(arr, index, consArr)
  res = []
  tot = []
  dates = []
  codes = []
  # departure = []
  # arrival = []
  arr[index..-1].map.with_index do |item2, index2|
    # puts "this are the dates #{item2[:dates]}"
    # more_dates = Date.parse(item2[:dates])
    # puts more_dates
    # departure.pop(more_dates)
    # puts departure
    # puts "this is the room coe #{item2[:room_code]}"

    # puts "this is #{item2}"
    # puts "this is index2 #{index2}"
    # tot.push(item2[:sum])
    # tot_sum = tot.reduce(:+)
    # puts tot_sum
    # tota_sum = (item2[:sum]).reduce(:+)
    # puts tota_sum
    nextItem2 = (index + index2) < arr.size - 1 ? arr[index + index2 + 1][:dates] : '1/1/1900'
    # puts nextItem2
    res.push(item2)
    # res.push({room_code:item2[:room_code],arrival:
    if Date.parse(item2[:dates]) + 1 == Date.parse(nextItem2)
    else
      break
    end
  end
  # print 'res: '
  # puts "this is are the elements insde #{res}"
  res.each do |vol|
    # puts "i am priting vol #{vol}"
    tot.push(vol[:sum])
    # tot_sum = tot.reduce(:+)
    # puts tot_sum
    # departure.push(vol[:dates])
    # sefue = departure.pop
    # puts "ahora se fue #{sefue}"
    dates.push(vol[:dates])
    codes.push(vol[:room_code])
    # puts dates
  end

  llego = dates.shift
  # puts "this is the arrival date #{llego}"
  sefue = dates.pop
  # puts "this is the departure date #{Date.parse(sefue) + 1}"
  tot_suma = tot.reduce(:+)
  # puts "this is the total #{tot_suma}"
  # consArr.push(res)
  consArr.push({ room_type: codes[0], arrival: llego, departure: (Date.parse(sefue) + 1).to_s, total_sum: tot_suma })
  # consArr.push({ room_type: codes = {
  #                arrival: llego,
  #                departure: (Date.parse(sefue) + 1).to_s,
  #                total_sum: tot_suma

  #              } })
  # puts "i am pritning here #{consArr}"

  res.size
end
pp catch_cons(arr)

# accumulator = 0
# catch_cons(arr)[0].each_with_index do |x, _idx|

#   accumulator += x[:sum]

# end

# puts accumulator
# (5..10).inject { |sum, n| sum + n }
