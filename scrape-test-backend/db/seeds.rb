# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ShowSource.destroy_all
Show.destroy_all
Source.destroy_all

std = Show.create(title: 'star-trek-discovery')
supernatural = Show.create(title: 'supernatural')
cbs = Source.create(name: 'cbs')
g_p_m = Source.create(name: 'google_play_movies')
ShowSource.create(show: std, source: cbs)
ShowSource.create(show: std, source: g_p_m)
