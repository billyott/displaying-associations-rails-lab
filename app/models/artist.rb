class Artist < ActiveRecord::Base
    has_many :songs

    def song_count
        Song.all.select{|song| song.artist_id == self.id}.count
    end

end
