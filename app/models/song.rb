class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    my_artist = Artist.all.find{|artist| artist.id == self.artist_id}
    my_artist.name
  end

end
