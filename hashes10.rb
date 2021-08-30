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

# response_hilton['roomRates'] do |item|
#   puts item
# end

def calc_result(user, response_hilton)
  arr = {}
  user[:room_stays].map do |code|
    code['external_code']
    response_hilton['roomRates'].each do |rate|
      next unless rate['roomTypeCode'] == code['external_code']

      rate['rateDetails'].each do |room_date|
        next unless room_date['effectiveDate'] == code['date']

        luffy = room_date['rate1Person'].to_f * code['rooms_requested'].to_f
        room_count = code['rooms_requested'].to_i

        if !arr[code['external_code']]
          arr[code['external_code']] =
            [{ rate_plan: response_hilton['ratePlanCode'], dates: code['date'], sum: luffy,
               room_count: room_count, prop_code: response_hilton['propCode'] }]
        else
          arr[code['external_code']].push({ rate_plan: response_hilton['ratePlanCode'], dates: code['date'], sum: luffy,
                                            room_count: room_count, prop_code: response_hilton['propCode'] })
        end
      end
    end
  end
  arr
end

# {"K1ERV": [{"arrival": "2021-11-26", "departure": "2021-11-28", "base_cost": 1458 + 2727}, {"arrival": "2021-11-30", "departure": "2021-11-31", "base_cost": 2948.39999}], "K1ERV1": [same thing for that room type]}

def catch_cons(arr, consArr = [])
  arr.each do |room_code, stay_arr|
    # puts "this ar the codes #{room_code}"
    # puts "thi is what stay_arr containts #{stay_arr}"
    base_rate = 0
    rooms_requested = 0
    dates = []
    stay_arr.each do |stay|
      # puts "this are each element of stay_ar #{stay}"

      rate_plan = stay[:rate_plan]
      prop_code = stay[:prop_code]
      date = stay[:dates]
      #   puts "here are the dates #{date}"
      dates.push(date)
      #   puts "what we have her is the new array #{dates}"
      base_rate += stay[:sum]
      # puts "adding the value #{base_rate}"
      rooms_requested += stay[:room_count]
      # puts "now this is the current total of rooms requested so far for the date #{rooms_requested}"
      # puts
      next_day = (Date.parse(date) + 1).to_s
      #   puts "this is the next day #{next_day}"
      # puts "i am the next day #{next_day}"
      # start_date = Date.parse(dates.min)
      # puts "this is the start date #{start_date}"

      # range_of_dates = (Date.parse(next_day) - Date.parse(dates.min)).count
      # puts "here we have the range of dates for each request #{range_of_dates}"
      all_dates = stay_arr.map { |x| x[:dates] }
      #   puts "priting all dates from the main object #{all_dates}"
      if all_dates.include?(next_day)
        next
      else
        arrival = dates.min
        # puts "this is the arrival day #{arrival}"
        departure = next_day
        range_of_dates = (Date.parse(departure) - Date.parse(arrival)).to_i
        # puts "this is the range of dates for each request #{range_of_dates}"
        consArr.push({ rate_plan: rate_plan, code: room_code, arrival: arrival,
                       departure: departure, total_sum: (base_rate).round(3), total_sum_average: (base_rate / range_of_dates).round(3), weighted_average_rate: ((base_rate / range_of_dates) / rooms_requested).round(3), pro_code: prop_code })
        dates = []
        base_rate = 0
        rooms_requested = 0
      end
    end
  end
  consArr
end

result_of_calc = calc_result(user, response_hilton)
total_sum_average1 = 2337.3333333333335
# puts total_sum_average1.round(2)

# puts "printing here #{result_of_calc}"
# puts
look_at_this_reesult = catch_cons(result_of_calc)
puts "here is the final calculation #{look_at_this_reesult}"

# def get_values(arr)
#   catch_cons(arr).each do |code|
#     puts "you ar here #{code}"

#     code.each do |item|
#       puts item
#     end
#   end
# end
# puts "this is whtat i am looking at #{get_values(arr)} "
# response = get_values(arr)
# puts "now this is the respose #{response}"
# puts response['rate_plan']
