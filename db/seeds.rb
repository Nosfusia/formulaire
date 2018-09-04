# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gateaux = Theme.create(name:"Gateaux")

Gateaux1 = Question.create(name:"Petit pain au chocolat ou Chocolatine ?")
Gateaux1_1 = Reponse.create(name:"Petit pain au chocolat")
Gateaux1_2 = Reponse.create(name:"Chocolatine")
Questionnaire.create(theme_id: Gateaux.id, question_id: Gateaux1.id)
QToA.create(question_id: Gateaux1.id, reponse_id: Gateaux1_1.id)
QToA.create(question_id: Gateaux1.id, reponse_id: Gateaux1_2.id )

Gateaux2 = Question.create(name:"Donuts ou Eclair au chocolat ?")
Gateaux2_1 = Reponse.create(name:"Donuts")
Gateaux2_2 = Reponse.create(name:"Eclair au chocolat")
Questionnaire.create(theme_id: Gateaux.id, question_id: Gateaux2.id)
QToA.create(question_id: Gateaux2.id, reponse_id: Gateaux2_1.id)
QToA.create(question_id: Gateaux2.id, reponse_id: Gateaux2_2.id )


Boissons = Theme.create(name:"Boissons")

Boissons1 = Question.create(name:"Eau plate ou pétillante ?")
Boissons1_1 = Reponse.create(name:"Eau plate")
Boissons1_2 = Reponse.create(name:"Eau pétillante")
Questionnaire.create(theme_id: Boissons.id, question_id: Boissons1.id)
QToA.create(question_id: Boissons1.id, reponse_id: Boissons1_1.id)
QToA.create(question_id: Boissons1.id, reponse_id: Boissons1_2.id )


Boissons2 = Question.create(name:"Ice Tea ou FuzzTea ?")
Boissons2_1 = Reponse.create(name:"Ice Tea")
Boissons2_2 = Reponse.create(name:"FuzzTea")
Questionnaire.create(theme_id: Boissons.id, question_id: Boissons2.id)
QToA.create(question_id: Boissons2.id, reponse_id: Boissons2_1.id)
QToA.create(question_id: Boissons2.id, reponse_id: Boissons2_2.id )
