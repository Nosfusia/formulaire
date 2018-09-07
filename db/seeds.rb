# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gateaux = Theme.create(name:"Gateaux")
Gateaux1 = Question.create(name:"Petit pain au chocolat ou Chocolatine ?")
Gateaux1_1 = Reponse.create(name:"Petit pain au chocolat", valeur: 4)
Gateaux1_2 = Reponse.create(name:"Chocolatine", valeur: 36)
Questionnaire.create(theme_id: Gateaux.id, question_id: Gateaux1.id)
QToA.create(question_id: Gateaux1.id, reponse_id: Gateaux1_1.id)
QToA.create(question_id: Gateaux1.id, reponse_id: Gateaux1_2.id )
Gateaux2 = Question.create(name:"Donuts ou Eclair au chocolat ?")
Gateaux2_1 = Reponse.create(name:"Donuts", valeur: 18)
Gateaux2_2 = Reponse.create(name:"Eclair au chocolat", valeur: 9)
Questionnaire.create(theme_id: Gateaux.id, question_id: Gateaux2.id)
QToA.create(question_id: Gateaux2.id, reponse_id: Gateaux2_1.id)
QToA.create(question_id: Gateaux2.id, reponse_id: Gateaux2_2.id )


Boissons = Theme.create(name:"Boissons")
Boissons1 = Question.create(name:"Eau plate ou pétillante ?")
Boissons1_1 = Reponse.create(name:"Eau plate", valeur: 9)
Boissons1_2 = Reponse.create(name:"Eau pétillante", valeur: 17)
Questionnaire.create(theme_id: Boissons.id, question_id: Boissons1.id)
QToA.create(question_id: Boissons1.id, reponse_id: Boissons1_1.id)
QToA.create(question_id: Boissons1.id, reponse_id: Boissons1_2.id )
Boissons2 = Question.create(name:"Ice Tea ou FuzzTea ?")
Boissons2_1 = Reponse.create(name:"Ice Tea", valeur: 24)
Boissons2_2 = Reponse.create(name:"FuzzTea", valeur: 11)
Questionnaire.create(theme_id: Boissons.id, question_id: Boissons2.id)
QToA.create(question_id: Boissons2.id, reponse_id: Boissons2_1.id)
QToA.create(question_id: Boissons2.id, reponse_id: Boissons2_2.id )

Courses = Theme.create(name:"Courses")
Courses1 = Question.create(name:"Courir dehors ou en salle ?")
Courses1_1 = Reponse.create(name:"Dehors")
Courses1_2 = Reponse.create(name:"En salle")
Questionnaire.create(theme_id: Courses.id, question_id: Courses1.id)
QToA.create(question_id: Courses1.id, reponse_id: Courses1_1.id)
QToA.create(question_id: Courses1.id, reponse_id: Courses1_2.id )


Piscines = Theme.create(name:"Piscine")
Piscines1 = Question.create(name:"Vitesse ou endurance?")
Piscines1_1 = Reponse.create(name:"Vitesse")
Piscines1_2 = Reponse.create(name:"Endurance")
Questionnaire.create(theme_id: Piscines.id, question_id: Piscines1.id)
QToA.create(question_id: Piscines1.id, reponse_id: Piscines1_1.id)
QToA.create(question_id: Piscines1.id, reponse_id: Piscines1_2.id )

Velos = Theme.create(name:"Velos")
Velos1 = Question.create(name:"En salle ou dehors ?")
Velos1_1 = Reponse.create(name:"En salle")
Velos1_2 = Reponse.create(name:"Dehors")
Questionnaire.create(theme_id: Velos.id, question_id: Velos1.id)
QToA.create(question_id: Velos1.id, reponse_id: Velos1_1.id)
QToA.create(question_id: Velos1.id, reponse_id: Velos1_2.id )

Saisons = Theme.create(name:"Saisons")
Saisons1 = Question.create(name:"Eté ou Hiver ?")
Saisons1_1 = Reponse.create(name:"Eté")
Saisons1_2 = Reponse.create(name:"Hiver")
Questionnaire.create(theme_id: Saisons.id, question_id: Saisons1.id)
QToA.create(question_id: Saisons1.id, reponse_id: Saisons1_1.id)
QToA.create(question_id: Saisons1.id, reponse_id: Saisons1_2.id )
