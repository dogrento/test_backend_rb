# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
parana = State.create(state: 'Paraná', uf: 'PR')
santa_catarina = State.create(state: 'Santa Catarina', uf: 'SC')
rio_grande = State.create(state: 'Rio Grande do Sul', uf: 'RS')

City.create(city: 'Curitiba', state: parana)
City.create(city: 'Londrina', state: parana)
City.create(city: 'Maringá', state: parana)

City.create(city: 'Florianópolis', state: santa_catarina)
City.create(city: 'Joinville', state: santa_catarina)
City.create(city: 'Chapecó', state: santa_catarina)

City.create(city: 'Porto Alegre', state: rio_grande)
City.create(city: 'Pelotas', state: rio_grande)
City.create(city: 'Gravataí', state: rio_grande)

