# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts '🌱 Seeding superheroes...'

heroes = Hero.create([
    {name: "Peter", super_name: "Jaja"},
    {name: "Ichigo", super_name: "Shinigami"}
   
    ])

powers = Power.create([
    { name: "intelligent", description: "very intelligent and quick"},
    { name: "Getsugatensho", description: "Strong , fast and powerful"}
    ])

heropowers = HeroPower.create([
    {strength: "Strong", power_id: 1,hero_id: 2},
    {strength: "Weak", power_id: 2,hero_id: 1}
    ])

puts '✅ Done seeding'