require 'rspotify'
require 'pry'

RSpotify.authenticate("9e567e0913194ddc9ef2b0a550329fda", "0b27624d80e24b90978685a63c564433")


class API
  def self.get_artist(artist)
    return RSpotify::Artist.search(artist).first
  end
  
  def self.find_artist(artist_name)
    artists = RSpotify::Artist.search('artist_name')
    artists
  end 
  

  def self.get_album(rspotify_artist)
    result = Array.new
    for album in rspotify_artist.albums
      result.push(album.name)
    end
    return result
  end

  def self.get_songs_from_album(rspotify_artist, album_name_index)
    result = Array.new
    rspotify_album = rspotify_artist.albums[album_name_index]
    for track in rspotify_album.tracks
      result.push(track.name)
    end
    return result
  end

end
