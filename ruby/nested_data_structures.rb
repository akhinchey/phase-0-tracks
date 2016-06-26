supply_closet = {

shelf_1: [
"paper",
"pencils",
"tape"
],

shelf_2: [
"crayons",
"markers",
"paints"
],

shelf_3: {
  construction_paper_packs: 2,
  printer_cartriges: 4,
  scissors: 5
}

}

puts supply_closet[:shelf_2][1]

puts supply_closet[:shelf_1].index("tape")

puts supply_closet[:shelf_3][:printer_cartriges]

supply_closet[:shelf_3].each { |k,v| puts "#{k}: #{v}"} 