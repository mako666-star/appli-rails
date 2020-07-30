# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
e = City.create(citie: "Théoville")
a = Doctor.create(first_name: "pelo", last_name: "high-kik", specialty: "la mort", zip_code: "1", citie_id: e)
b = Doctor.create(first_name: "Ronald", last_name: "Mcdonald", specialty: "la vie", zip_code: "2")
c = Patient.create(first_name: "Jean-luc", last_name: "Reichmann", citie_id: e)
d = Patient.create(first_name: "Danny", last_name: "Glover")

Appointment.create(doctor: a, patient: c)
Appointment.create(doctor: a, patient: d)
puts tp Appointment.last