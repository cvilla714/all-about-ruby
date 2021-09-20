# frozen_string_literal: true

system 'clear'

pirate_king_crew = {
  'sanji' => 'black leg sanji',
  'zorro' => 'dark king and greates swordsman',
  'nami' => 'greatest navigator',
  'jinbei' => 'best hellman ever',
  'chopper' => 'best doctor',
  'robin' => 'best arquerlogist'

}

puts pirate_king_crew['sanji']
puts pirate_king_crew['robin']

# puts
# how to add to a hash
puts
pirate_king_crew['franky'] = 'best ship repair'
puts pirate_king_crew
puts

# how  to delete an element from a hash
pirate_king_crew.delete('nami')
puts pirate_king_crew

# adding an array and extracting specific information from the array
pirate = {
  luffy: {
    crew: {
      sanji: 'black leg sanji',
      zorro: 'dark king and greates swordsman',
      nami: 'greatest navigator',
      jinbei: 'best hellman ever',
      chopper: 'best doctor',
      robin: 'best arquerlogist'
    }
  },
  'kid' => {
    'crew' => {
      'killer' => 'right hand man',
      'heat' => 'no idea',
      'wire' => 'no clue'
    }
  },
  'law' => {
    'crew' => {
      'bepo' => 'i believe he is a dr',
      'penguin' => 'i think he is a gunman',
      'jean bart' => 'former captain'
    },
    'info' => ['crew strengh', 'ship', 'allies and affiliation']
  }
}

puts
puts pirate[:luffy][:crew][:robin]
puts
puts pirate[:luffy][:crew][:chopper]
puts
puts pirate['law']['crew']['jean bart']
puts
puts pirate['law']['info'][2]

# how to print all of the information from the hash
pirate.each do |item|
  puts item
end

puts

pirate[:luffy].each do |member|
  puts member
end

puts
pirate['law'].each do |item|
  puts item
end
