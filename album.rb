class Album
  # NOTE: This is the 'class' variable that can be accessed by the 'Album' class itself (cool idea)
  @@album_count = 0

  # NOTE: This is an example of using a 'Class Constant' which is denoted by a capital variable name:
  # Also, these value will NOT change as a result of being a constant:
  GENRES = ["Hip-Hop", "Pop", "Jazz"]

  def initialize
    @@album_count += 1
  end

  # Setter:
  def release_date=(date)
    @release_date = date
  end

  # Getter:
  def release_date
    @release_date
  end

  # NOTE: This is the 'class method' that we created to access the 'class' variable created earlier
  # This is designated by using 'self.method_name' syntax:
  def self.count
    @@album_count
  end
end

album = Album.new()
album.release_date = 1991

puts "album.release_date: ", album.release_date
puts "Album.count: ", Album.count
puts "Album::GENRES --> ", Album::GENRES
