# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'
Listing.destroy_all
User.destroy_all

vw = Listing.new(
  brand: 'Volkswagen',
  production_year: 2010,
  user: User.new(email: Faker::Internet.email , password: '123456'),
  name: 'Golf',
  price: 310,
  description: 'Classic german tuning car. A classic and clean design as well as a crazy engine swap awaits you.',
  horsepower: 380,
  engine: '1.8T (inline 4)'
  )
vw_1 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582810344/VW%20Golf/martin-katler-N1p9Ih0qq-c-unsplash_nqszjh.jpg')
vw_2 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582810337/VW%20Golf/martin-katler-E5QW_maORfg-unsplash_hcxaix.jpg')
vw_3 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582810326/VW%20Golf/martin-katler-OfM1G5mWrdU-unsplash_pje4sd.jpg')
vw.photos.attach(io: vw_1, filename: 'vw1.jpg', content_type: 'image/jpg')
vw.photos.attach(io: vw_2, filename: 'vw2.jpg', content_type: 'image/jpg')
vw.photos.attach(io: vw_3, filename: 'vw3.jpg', content_type: 'image/jpg')
vw.save!


nissan = Listing.new(
  brand: 'Nissan',
  production_year: 2002,
  user: User.new(email: Faker::Internet.email , password: '123456'),
  name: 'Silvia S15',
  price: 240,
  description: 'Amazing Japan-Style experience while staying far away from the mainstream. Slick white and black design.',
  horsepower: 640,
  engine: '2JZ (inline 6)'
  )
nissan_1 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582811335/Nissan%20Silvia%20S15/velito-eYgmMc5HA3M-unsplash_lrr0nl.jpg')
nissan_2 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582811330/Nissan%20Silvia%20S15/velito-iDK6fOujk-A-unsplash_qk5zuj.jpg')
nissan_3 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582811326/Nissan%20Silvia%20S15/velito-QJtUT8qLuZg-unsplash_zfpobs.jpg')
nissan.photos.attach(io: nissan_1, filename: 'nissan1.jpg', content_type: 'image/jpg')
nissan.photos.attach(io: nissan_2, filename: 'nissan2.jpg', content_type: 'image/jpg')
nissan.photos.attach(io: nissan_3, filename: 'nissan3.jpg', content_type: 'image/jpg')
nissan.save!


ford = Listing.new(
  brand: 'Ford',
  production_year: 2018,
  user: User.new(email: Faker::Internet.email , password: '123456'),
  name: 'Mustang',
  price: 500,
  description: 'The Epitome of new time american muscle. An experience for the eyes as well as any car lovers heart!',
  horsepower: 673,
  engine: 'V8'
  )
ford_1 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582811715/Ford%20Mustang/lance-asper-50cIn5ELxLo-unsplash_otu30i.jpg')
ford_2 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582811721/Ford%20Mustang/lance-asper-CJ6Zq-d3V8k-unsplash_dm6s9y.jpg')
ford_3 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582811729/Ford%20Mustang/lance-asper-N9Pf2J656aQ-unsplash_yetza4.jpg')
ford.photos.attach(io: ford_1, filename: 'ford1.jpg', content_type: 'image/jpg')
ford.photos.attach(io: ford_2, filename: 'ford2.jpg', content_type: 'image/jpg')
ford.photos.attach(io: ford_3, filename: 'ford3.jpg', content_type: 'image/jpg')
ford.save!

mitsubishi = Listing.new(
  brand: 'Mitsubishi',
  production_year: 2005,
  user: User.new(email: Faker::Internet.email , password: '123456'),
  name: 'Lancer EVO',
  price: 500,
  description: 'Absolute tuning classic, and perfect for the Japan tuning lovers for a mid-range budget.',
  horsepower: 710,
  engine: '4g63t (inline 4)'
  )
mitsubishi_1 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582812308/Mitsubishi%20EVO/aachal-vJoAWqfcvBk-unsplash_p8ivka.jpg')
mitsubishi_2 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582812315/Mitsubishi%20EVO/aachal-fp46DdVCGh8-unsplash_wkab8i.jpg')
mitsubishi_3 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582812310/Mitsubishi%20EVO/aachal-Ok-e-pVNv-E-unsplash_jp5kao.jpg')
mitsubishi.photos.attach(io: mitsubishi_1, filename: 'mitsubishi1.jpg', content_type: 'image/jpg')
mitsubishi.photos.attach(io: mitsubishi_2, filename: 'mitsubishi2.jpg', content_type: 'image/jpg')
mitsubishi.photos.attach(io: mitsubishi_3, filename: 'mitsubishi3.jpg', content_type: 'image/jpg')
mitsubishi.save!

lambo = Listing.new(
  brand: 'Lamborghini',
  production_year: 2018,
  user: User.new(email: Faker::Internet.email , password: '123456'),
  name: 'Hurracan',
  price: 800,
  description: 'Mad Mikes legendary Lamborghini Hurracan from the Goodwood festival of speed.',
  horsepower: 1014,
  engine: 'V12'
  )
lambo_1 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582813718/lamborghini/gh_yxptoj.jpg')
lambo_2 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582813718/lamborghini/lambor_r5x0qw.jpg')
lambo_3 = URI.open('https://res.cloudinary.com/bjarnehinkel/image/upload/v1582813715/lamborghini/ini_ogcskf.jpg')
lambo.photos.attach(io: lambo_1, filename: 'lambo1.jpg', content_type: 'image/jpg')
lambo.photos.attach(io: lambo_2, filename: 'lambo2.jpg', content_type: 'image/jpg')
lambo.photos.attach(io: lambo_3, filename: 'lambo3.jpg', content_type: 'image/jpg')
lambo.save!
