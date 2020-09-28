class MusicImporter
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files || Dir.entries(@path).select! {|entry| entry.end_with?(".mp3")}
  end

end
