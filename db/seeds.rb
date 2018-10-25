require 'faker'

#10.times do
 #   assemnlies = Assembly.create(name:Faker::ElectricalComponents.active)
#end

#10.times do
 #   parts = Part.create(part_number:Faker::IDNumber.valid)
#end
pieces = []

10.times do |i|
    pieces << Assembly.create(name:Faker::ElectricalComponents.active)
end

5.times do |i|
    part = Part.create!(part_number: Faker::IDNumber.spanish_foreign_citizen_number )
    pieces[i].parts << part
    index = Random.new.rand(1..2)
    index.times do
        pieces[Random.new.rand(1..9)].parts << part
    end
end