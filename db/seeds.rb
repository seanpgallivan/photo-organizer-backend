require 'faker'
sizes = ["1024/768", "640/480", "1200/800", "1280/720", "768/1024", "480/640", "800/1200", "720/1280"]

User.create(username: "user", bio: "I am here ", fullname: "User Name")
User.create(username: "sean", bio: "I am here ", fullname: "Sean Gallivan")
User.create(username: "mia", bio: "I am here ", fullname: "Mia Pan")
User.create(username: "jacob", bio: "I am here ", fullname: "Jacob Knopf")

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

j = 0
20.times {
    Album.create(user_id: (1 + (j % 4)), name: Faker::Lorem.word, description: Faker::Lorem.sentence)
    j += 1
}

tag_options = []
40.times {tag_options.push(Faker::Hipster.word)}
people_options = []
40.times {people_options.push(Faker::Name.name)}


i = 0
800.times {
    user = (1 + (i % 4))
    tags = []
    rand(1..5).times {tags.push(tag_options.sample)}
    people = []
    rand(1..3).times {people.push(people_options.sample)}
    description = Faker::Lorem.paragraph(sentence_count: rand(1..2))
    location = Faker::Nation.capital_city
    size = sizes.sample
    filename = "https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{size}"
    photo = Photo.create(user_id: user, description: description, tags: tags.uniq, people: people.uniq, location: location, size: size, filename: filename )
    AlbumsPhoto.create(album_id: User.find(user).albums.sample.id, photo_id: photo.id)
    i += 1
}