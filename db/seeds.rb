# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
# # DUMMY
# # Translation.create(word: , content: , allergen: peanut, language: )
#
# # LANGUAGES
# spanish = Language.create(name: "spanish")
# german = Language.create(name: "german")
# serbian = Language.create(name: "serbian")
#
# # PEANUT
# peanut = Allergen.create(name: "peanuts")
#
# Translation.create(word: "cacahuetes", content_default: "Soy alérgico a los cacahuetes.", allergen: peanut, language: spanish)
# Translation.create(word: "erdnüsse", content_default: "Ich bin allergisch gegen erdnüsse.", allergen: peanut, language: german)
# Translation.create(word: "кикирики", content_default: "Ја сам алергичан на кикирики (Ja sam alergičan na kikiriki).", content_female: "Ја сам алергична на кикирики (Ja sam alergična na kikiriki).", allergen: peanut, language: serbian)
