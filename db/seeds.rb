# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'

files = %w[philodendron pothos snake-plant]

3.times do
  files.each do |plant|
    @plant = Plant.new(
      name: plant, 
      watering_frequency: Faker::Number.between(from: 1, to: 7), 
      weekly_or_monthly: ['weekly', 'monthly'].sample, 
      last_time_watered: Faker::Date.between(from: 1.month.ago, to: Date.today),
      description: Faker::Lorem.paragraph_by_chars(number: 350)
      )
    @plant.save
    file = files.sample
    @plant.image.attach(io: File.open("./public/images/#{file}.png"), filename: file)
  end
end