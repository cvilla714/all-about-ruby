user =
  { hotel_code: 'NYCNH',
    property_guid: '448ea118-2394-492f-ac87-b8b186f8eaf3',
    arrival: '2021-11-26',
    departure: '2021-11-30',
    room_stays: [{ 'room_type_guid' => 'a625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '10', 'date' => '2021-11-26', 'external_code' => 'K1ERV', 'code' => nil },
                 { 'room_type_guid' => 'a625dce-248b-4be4-977d-abca7d3891c5', 'rooms_requested' => '10', 'date' => '2021-11-27',
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

# date_one = user[:arrival]
# puts date_one
# date_two = user[:departure]
# puts date_two
# date_range = (date_one..date_two).to_a
# puts date_range

# dates_ranges = (user[:arrival]..user[:departure]).to_a
# puts dates_ranges
# puts 'next line'
# puts dates_ranges[0]
# puts

# user[:room_stays].each do |lot|
#   lot
# end

# response_hilton['roomRates'].each do |item|
#   details = item['rateDetails']
#   current_rate = details.find { |f| f['effectiveDate'] == dates_ranges.first }
#   current_rate = current_rate ? current_rate['rate1Person'] : 0

#   room_rates_by_day = dates_ranges.each_with_object([]) do |date, _rates|
#     new_rate_block = details.find { |x| x['effectiveDate'] == date }
#     puts current_rate = new_rate_block ? new_rate_block['rate1Person'] : current_rate
#   end
# end

# user_code = user[:room_stays].map do |code|
#   code['external_code']
#   response_hilton['roomRates'].each do |item|
#     next unless item['roomTypeCode'] == code['external_code']

#     details = item['rateDetails']
#     current_rate = details.find { |f| f['effectiveDate'] == dates_ranges.first }
#     current_rate = current_rate ? current_rate['rate1Person'] : 0

#     room_rates_by_day = dates_ranges.each_with_object([]) do |date, _rates|
#       new_rate_block = details.find { |x| x['effectiveDate'] == date }
#       current_rate = new_rate_block ? new_rate_block['rate1Person'] : current_rate

#       puts current_rate * code['rooms_requested'].to_f
#     end
#   end
#   puts
# end

# codes = user[:room_stays].map do |code|
#   code['external_code']
#   response_hilton['roomRates'].each do |rate|
#     next unless rate['roomTypeCode'] == code['external_code']

#     rate['rateDetails'].each do |room_date|
#       current_rate = room_date['effectiveDate'] == dates_ranges[0]
#       current_rate = current_rate ? room_date['rate1Person'] : 0
#       #   puts current_rate
#       room_rates_by_day = dates_ranges.each_with_object([]) do |date, _baso|
#         new_rate_block = room_date['effectiveDate'] == date
#         current_rate = new_rate_block ? room_date['rate1Person'] : current_rate
#         pp current_rate * code['rooms_requested'].to_f, date
#       end
#       #   puts room_date['rate1Person'].to_f * code['rooms_requested'].to_f if room_date['effectiveDate'] == code['date']
#     end
#   end
# end

# user_code = user[:room_stays].map do |code|
#   code['external_code']
#   response_hilton['roomRates'].each do |item|
#     next unless item['roomTypeCode'] == code['external_code']

#     item['rateDetails'].each do |room_date|
#       puts room_date['rate1Person'].to_f * code['rooms_requested'].to_f if room_date['effectiveDate'] == code['date']
#     end
#   end
#   puts
# end
# response_hilton =
#   {
#     'propCode' => 'NYCNH',
#     'ratePlanCode' => 'OG',
#     'serviceChargesAndTaxesIncluded' => false,
#     'currencyCode' => 'USD',
#     'roomRates' =>
#        [{ 'roomTypeCode' => 'D2D',
#           'inventory' => 25,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 605.49,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 296.1, 'rate2Person' => 296.1, 'rate3Person' => 314.1, 'rate4Person' => 332.1 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 299.39, 'rate2Person' => 299.39,
#              'rate3Person' => 317.59, 'rate4Person' => 335.79 }] },
#         { 'roomTypeCode' => 'Q1R',
#           'inventory' => 25,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 569.29,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 278.1, 'rate2Person' => 278.1, 'rate3Person' => 296.1, 'rate4Person' => 314.1 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 281.19, 'rate2Person' => 281.19,
#              'rate3Person' => 299.39, 'rate4Person' => 317.59 }] },
#         { 'roomTypeCode' => 'K1D',
#           'inventory' => 25,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 596.44,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 291.6, 'rate2Person' => 291.6, 'rate3Person' => 309.6, 'rate4Person' => 327.6 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 294.84, 'rate2Person' => 294.84,
#              'rate3Person' => 313.04, 'rate4Person' => 331.24 }] },
#         { 'roomTypeCode' => 'K1T',
#           'inventory' => 25,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 616.35,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 301.5, 'rate2Person' => 301.5, 'rate3Person' => 319.5, 'rate4Person' => 337.5 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 304.85, 'rate2Person' => 304.85,
#              'rate3Person' => 323.05, 'rate4Person' => 341.25 }] },
#         { 'roomTypeCode' => 'D2T',
#           'inventory' => 25,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 634.45,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 310.5, 'rate2Person' => 310.5, 'rate3Person' => 328.5, 'rate4Person' => 346.5 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 313.95, 'rate2Person' => 313.95,
#              'rate3Person' => 332.15, 'rate4Person' => 350.35 }] },
#         { 'roomTypeCode' => 'K1H',
#           'inventory' => 25,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 634.45,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 310.5, 'rate2Person' => 310.5, 'rate3Person' => 328.5, 'rate4Person' => 346.5 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 313.95, 'rate2Person' => 313.95,
#              'rate3Person' => 332.15, 'rate4Person' => 350.35 }] },
#         { 'roomTypeCode' => 'D2H',
#           'inventory' => 25,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 652.55,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 319.5, 'rate2Person' => 319.5, 'rate3Person' => 337.5, 'rate4Person' => 355.5 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 323.05, 'rate2Person' => 323.05,
#              'rate3Person' => 341.25, 'rate4Person' => 359.45 }] },
#         { 'roomTypeCode' => 'D2EK',
#           'inventory' => 25,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 634.45,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 310.5, 'rate2Person' => 310.5, 'rate3Person' => 328.5, 'rate4Person' => 346.5 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 313.95, 'rate2Person' => 313.95,
#              'rate3Person' => 332.15, 'rate4Person' => 350.35 }] },
#         { 'roomTypeCode' => 'K1TRU1',
#           'inventory' => 10,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 915.0,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 450.0, 'rate2Person' => 450.0, 'rate3Person' => 495.0, 'rate4Person' => 540.0 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 455.0, 'rate2Person' => 455.0,
#              'rate3Person' => 500.5, 'rate4Person' => 546.0 }] },
#         { 'roomTypeCode' => 'D2TRU1',
#           'inventory' => 17,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 915.0,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 450.0, 'rate2Person' => 450.0, 'rate3Person' => 495.0, 'rate4Person' => 540.0 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 455.0, 'rate2Person' => 455.0,
#              'rate3Person' => 500.5, 'rate4Person' => 546.0 }] },
#         { 'roomTypeCode' => 'K1SRU1',
#           'inventory' => 2,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 6345.0,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 3150.0, 'rate2Person' => 3150.0, 'rate3Person' => 3330.0, 'rate4Person' => 3510.0 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 3185.0, 'rate2Person' => 3185.0,
#              'rate3Person' => 3367.0, 'rate4Person' => 3549.0 }] },
#         { 'roomTypeCode' => 'K1KCQ1',
#           'inventory' => 2,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 8155.0,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 4050.0, 'rate2Person' => 4050.0, 'rate3Person' => 4230.0, 'rate4Person' => 4410.0 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 4095.0, 'rate2Person' => 4095.0,
#              'rate3Person' => 4277.0, 'rate4Person' => 4459.0 }] },
#         { 'roomTypeCode' => 'D2DRD',
#           'inventory' => 13,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 605.49,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 296.1, 'rate2Person' => 296.1, 'rate3Person' => 314.1, 'rate4Person' => 332.1 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 299.39, 'rate2Person' => 299.39,
#              'rate3Person' => 317.59, 'rate4Person' => 335.79 }] },
#         { 'roomTypeCode' => 'D2ERC1',
#           'inventory' => 1,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 915.0,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 450.0, 'rate2Person' => 450.0, 'rate3Person' => 495.0, 'rate4Person' => 540.0 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 455.0, 'rate2Person' => 455.0,
#              'rate3Person' => 500.5, 'rate4Person' => 546.0 }] },
#         { 'roomTypeCode' => 'D2ERD',
#           'inventory' => 1,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 616.35,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 301.5, 'rate2Person' => 301.5, 'rate3Person' => 319.5, 'rate4Person' => 337.5 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 304.85, 'rate2Person' => 304.85,
#              'rate3Person' => 323.05, 'rate4Person' => 341.25 }] },
#         { 'roomTypeCode' => 'D2ERJ1',
#           'inventory' => 1,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 915.0,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 450.0, 'rate2Person' => 450.0, 'rate3Person' => 495.0, 'rate4Person' => 540.0 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 455.0, 'rate2Person' => 455.0,
#              'rate3Person' => 500.5, 'rate4Person' => 546.0 }] },
#         { 'roomTypeCode' => 'D2ERV',
#           'inventory' => 17,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 605.49,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 296.1, 'rate2Person' => 296.1, 'rate3Person' => 314.1, 'rate4Person' => 332.1 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 299.39, 'rate2Person' => 299.39,
#              'rate3Person' => 317.59, 'rate4Person' => 335.79 }] },
#         { 'roomTypeCode' => 'D2ERV1',
#           'inventory' => 1,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 915.0,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 450.0, 'rate2Person' => 450.0, 'rate3Person' => 495.0, 'rate4Person' => 540.0 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 455.0, 'rate2Person' => 455.0,
#              'rate3Person' => 500.5, 'rate4Person' => 546.0 }] },
#         { 'roomTypeCode' => 'D2HRV',
#           'inventory' => 7,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 625.4,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 306.0, 'rate2Person' => 306.0, 'rate3Person' => 324.0, 'rate4Person' => 342.0 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 309.4, 'rate2Person' => 309.4,
#              'rate3Person' => 327.6, 'rate4Person' => 345.8 }] },
#         { 'roomTypeCode' => 'K1DRD',
#           'inventory' => 14,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 596.44,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 291.6, 'rate2Person' => 291.6, 'rate3Person' => 309.6, 'rate4Person' => 327.6 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 294.84, 'rate2Person' => 294.84,
#              'rate3Person' => 313.04, 'rate4Person' => 331.24 }] },
#         { 'roomTypeCode' => 'K1ERC',
#           'inventory' => 25,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 596.44,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 291.6, 'rate2Person' => 291.6, 'rate3Person' => 309.6, 'rate4Person' => 327.6 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 294.84, 'rate2Person' => 294.84,
#              'rate3Person' => 313.04, 'rate4Person' => 331.24 }] },
#         { 'roomTypeCode' => 'K1ERD',
#           'inventory' => 8,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 596.44,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 291.6, 'rate2Person' => 291.6, 'rate3Person' => 309.6, 'rate4Person' => 327.6 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 294.84, 'rate2Person' => 294.84,
#              'rate3Person' => 313.04, 'rate4Person' => 331.24 }] },
#         { 'roomTypeCode' => 'K1ERD1',
#           'inventory' => 3,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 6345.0,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 3150.0, 'rate2Person' => 3150.0, 'rate3Person' => 3330.0, 'rate4Person' => 3510.0 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 3185.0, 'rate2Person' => 3185.0,
#              'rate3Person' => 3367.0, 'rate4Person' => 3549.0 }] },
#         { 'roomTypeCode' => 'K1ERV',
#           'inventory' => 12,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 596.44,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 291.6, 'rate2Person' => 291.6, 'rate3Person' => 309.6, 'rate4Person' => 327.6 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 294.84, 'rate2Person' => 294.84,
#              'rate3Person' => 313.04, 'rate4Person' => 331.24 }] },
#         { 'roomTypeCode' => 'K1ERV1',
#           'inventory' => 2,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 915.0,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 450.0, 'rate2Person' => 450.0, 'rate3Person' => 495.0, 'rate4Person' => 540.0 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 455.0, 'rate2Person' => 455.0,
#              'rate3Person' => 500.5, 'rate4Person' => 546.0 }] },
#         { 'roomTypeCode' => 'K1HRC',
#           'inventory' => 9,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 634.45,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 310.5, 'rate2Person' => 310.5, 'rate3Person' => 328.5, 'rate4Person' => 346.5 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 313.95, 'rate2Person' => 313.95,
#              'rate3Person' => 332.15, 'rate4Person' => 350.35 }] },
#         { 'roomTypeCode' => 'K1HRD',
#           'inventory' => 3,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 634.45,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 310.5, 'rate2Person' => 310.5, 'rate3Person' => 328.5, 'rate4Person' => 346.5 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 313.95, 'rate2Person' => 313.95,
#              'rate3Person' => 332.15, 'rate4Person' => 350.35 }] },
#         { 'roomTypeCode' => 'K1HRI',
#           'inventory' => 2,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 634.45,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 310.5, 'rate2Person' => 310.5, 'rate3Person' => 328.5, 'rate4Person' => 346.5 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 313.95, 'rate2Person' => 313.95,
#              'rate3Person' => 332.15, 'rate4Person' => 350.35 }] },
#         { 'roomTypeCode' => 'K1HRV',
#           'inventory' => 4,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 634.45,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 310.5, 'rate2Person' => 310.5, 'rate3Person' => 328.5, 'rate4Person' => 346.5 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 313.95, 'rate2Person' => 313.95,
#              'rate3Person' => 332.15, 'rate4Person' => 350.35 }] },
#         { 'roomTypeCode' => 'K1SRV1',
#           'inventory' => 3,
#           'totalServiceCharges' => 0.0,
#           'amountAfterTax' => 6345.0,
#           'rateDetails' =>
#           [{ 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-26', 'rate1Person' => 3150.0, 'rate2Person' => 3150.0, 'rate3Person' => 3330.0, 'rate4Person' => 3510.0 },
#            { 'rate1PersonTaxes' => 5.0, 'effectiveDate' => '2021-11-27', 'rate1Person' => 3185.0, 'rate2Person' => 3185.0,
#              'rate3Person' => 3367.0, 'rate4Person' => 3549.0 }] }],
#     'serviceChargePeriods' => [],
#     'taxPeriods' => [{ 'effectiveDate' => '2021-11-26',
#                        'taxes' => [{ 'type' => 'flat', 'period' => 'perNight', 'basis' => 'perGuest',
#                                      'amount' => 5.0 }] }],
#     'groupId' => '5d897c72-e27f-4841-a628-8ee154516867',
#     'cacheExpiryTime' => '2021-08-18T18:54:26.693099Z'
#   }

total = {}

user[:room_stays].map do |code|
  code['external_code']
  response_hilton['roomRates'].each do |rate|
    next unless rate['roomTypeCode'] == code['external_code']

    rate['rateDetails'].each do |room_date|
      next unless room_date['effectiveDate'] == code['date']

      puts luffy = room_date['rate1Person'].to_f * code['rooms_requested'].to_f
      if total.key?(code['external_code'])
        total[code['external_code']] += luffy
      else total[code['external_code']] = luffy
      end
    end
  end
end

puts total
