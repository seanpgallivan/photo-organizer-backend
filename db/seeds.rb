require 'faker'
sizes = ["1024/768", "640/480", "1200/800", "1280/720", "768/1024", "480/640", "800/1200", "720/1280"]

# user = User.create(username: "user", bio: "I am here ", fullname: "User Name")

# Album.create(user_id: user.id, name: "Travel", description: "my travel memory")
# Album.create(user_id: user.id, name: "Art", description: "the artwork that i like")
# Album.create(user_id: user.id, name: "Food", description: "Finding good Food!!!!")


# Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "malaysia", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
# Photo.create(user_id: user.id, description: "Some nice views", tags: ["travel", "landscape"], people: ["me"] , location: "Australia", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
# Photo.create(user_id: user.id, description: "landscape", tags: ["travel", "landscape"], people: ["me"] , location: "somewhere you don't know", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
# Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "place that have nice views", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
# Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
# Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
# Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
# Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
# Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
# Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
# Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )
# Photo.create(user_id: user.id, description: "I took this picture when i travled Malaysia", tags: ["travel", "landscape"], people: ["me"] , location: "sky", size: "", filename:"https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{sizes.sample}" )

# Photo.all.each { |photo| AlbumsPhoto.create(album_id: Album.all.sample.id, photo_id: photo.id) }


200.times {
    tags = []
    rand(1..5).times {tags.push(Faker::Dessert.flavor)}
    description = Faker::Lorem.paragraph(sentence_count: rand(1..2))
    location = Faker::Nation.capital_city
    size = sizes.sample
    filename = "https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{size}"
    Photo.create(user_id: 1, description: description, tags: tags, people: ["me"] , location: location, size: size, filename: filename )
}