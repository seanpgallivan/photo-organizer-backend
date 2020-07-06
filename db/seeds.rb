require 'faker'
sizes = ["1024/768", "640/480", "1200/800", "1280/720", "768/1024", "480/640", "800/1200", "720/1280"]

Log.create(message: "DATABASE RESEED")
AlbumsPhoto.delete_all
Photos.delete_all
Albums.delete_all
User.delete_all

User.create(username: "user", bio: "I am here", fullname: "User Name")
User.create(username: "sean", bio: "I am here", fullname: "Sean Gallivan")

uids = User.all.map {|u| u.id}

j = 0
(uids.count*5).times {
    Album.create(user_id: uids[j%uids.count], name: Faker::Lorem.word, description: Faker::Lorem.sentence)
    j += 1
}

tag_options = []
40.times {tag_options.push(Faker::Hipster.word)}
people_options = []
40.times {people_options.push(Faker::Name.name)}

i = 0
(uids.count*200).times {
    user = uids[i%uids.count]
    tags = []
    rand(1..5).times {tags.push(tag_options.sample)}
    people = []
    rand(1..3).times {people.push(people_options.sample)}
    description = Faker::Lorem.paragraph(sentence_count: rand(1..5))
    location = Faker::Nation.capital_city
    size = sizes.sample
    filename = "https://picsum.photos/seed/#{(0...50).map { ('a'..'z').to_a[rand(26)] }.join}/#{size}"
    photo = Photo.create(user_id: user, description: description, tags: tags.uniq, people: people.uniq, location: location, size: size.sub('/','x'), filename: filename )
    AlbumsPhoto.create(album_id: User.find(user).albums.sample.id, photo_id: photo.id)
    i += 1
}