# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Log.destroy_all
Experiment.destroy_all 
Scientist.destroy_all

s1 = Scientist.create name: 'Bill Nye'

e1 = Experiment.create budget: 10000000, summary: 'Global Warming', scientist: s1 

Log.create subject_nam: 'Earth', comment: 'Is dying', deceased: false, experiment: e1

s2 = Scientist.create name: 'Albert Einstein', mad: false, discipline: 'pyssissit'
e = Experiment.create budget: 500, summary: 'Relativity', scientist: s2
Log.create subject_nam: 'Gravity', comment: "It's real", deceased: false, experiment: e 
Log.create subject_nam: 'Space and Time', comment: 'Blows my mind', deceased: true, experiment: e
e = Experiment.create budget: 999, summary: 'E = MC2', scientist_id: s2.id
