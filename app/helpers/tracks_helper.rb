module TracksHelper
  def ugly_lyrics(lyrics)
    lyrics.split("\n").map { |line| "\u{266B} " + line }.join("\n")
  end

end
