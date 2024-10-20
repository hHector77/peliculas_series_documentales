# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Movie.create(name: 'Inception', synopsis: 'Un thriller que desafía la mente', director: 'Christopher Nolan')
Serie.create(name: 'Breaking Bad', synopsis: 'Un profesor de secundaria se convierte en un capo de la metanfetamina', director: 'Vince Gilligan')
DocumentaryFilm.create(name: 'El dilema de las redes sociales', synopsis: 'Explora el impacto humano peligroso de las redes sociales', director: 'Jeff Orlowski')

