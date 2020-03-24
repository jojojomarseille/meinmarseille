# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Categorie.create(name: "nature", description: "visitte d'espaces naturels autour de Marseille")
Zone.create(name: "marseille", description: "Marseille, deuxiéme et plus ancienne ville de France")
Product.create(title: "Visitte des calanques" , childs: true, lunch: false, duration: 120, jauge: 3, subtitle: "venez decouvrir un espace naturel exceptionnel, aux portes de marseille", description: "Les Calanques, connues aussi sous l'appellation calanques de Marseille, sont constituées d'une succession d'anses et de criques s'étendant sur plus de vingt kilomètres de côtes sur la mer Méditerranée", description2: "Les Calanques, connues aussi sous l'appellation calanques de Marseille, sont constituées d'une succession d'anses et de criques s'étendant sur plus de vingt kilomètres de côtes sur la mer Méditerranée", description3: "Les Calanques, connues aussi sous l'appellation calanques de Marseille, sont constituées d'une succession d'anses et de criques s'étendant sur plus de vingt kilomètres de côtes sur la mer Méditerranée", categorie_id: "1", zone_id: "1", price_cents:"2000")



