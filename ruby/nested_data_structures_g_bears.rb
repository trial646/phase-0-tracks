
highway = {
  lane1: {volvo: ['Sue', 'Bill','Robin']
},
  lane2: 'construction_zone',
  lane3: ['toyota', 'limo', {'truck' => '3_trailers'}]


}

highway[:lane1][:volvo][2]
highway[:lane3][1]

p highway.store(:lane4, 'more_construction')
p highway