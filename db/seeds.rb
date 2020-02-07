# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(username: "user", bio: "I am here ", fullname: "User Name")

Album.create(user_id: user.id, name: "Travel", description: "my travel memory")
Album.create(user_id: user.id, name: "Art", description: "the artwork that i like")
Album.create(user_id: user.id, name: "Food", description: "Finding good Food!!!!")

sizes = ["1024/768", "640/480", "1200/800", "1280/720", "768/1024", "480/640", "800/1200", "720/1280"]

Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "malaysia", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
Photo.create(user_id: user.id, description: "Some nice views", tags: ["travel", "landscape"], people: ["me"] , location: "Australia", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
Photo.create(user_id: user.id, description: "landscape", tags: ["travel", "landscape"], people: ["me"] , location: "somewhere you don't know", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "place that have nice views", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )

Photo.all.each { |photo| AlbumsPhoto.create(album_id: Album.all.sample.id, photo_id: photo.id) }