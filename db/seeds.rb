require "open-uri"

url = "https://res.cloudinary.com/dqla2kqej/image/upload/v1608321180/bftoycw4htbsihphh4xk.jpg"
file = URI.open(url)

album = Album.new
album.photos.attach(io: file, filename: 'buffalo.jpg', content_type: 'image/jpg')
if album.save
  puts "album 1 created"
end

if album.photos.attached?
  puts "photo 1 attached"
end

url = "https://res.cloudinary.com/dqla2kqej/image/upload/v1608148757/850pvubpyhaehthcbxrbgsmkrco7.jpg"
file = URI.open(url)

album = Album.last
album.photos.attach(io: file, filename: 'louise.jpg', content_type: 'image/jpg')
if album.save
  puts "album saved"
end

puts "#{album.photos.count} photos attached"
