class Member
  attr_reader :name,
              :allies,
              :enemies,
              :photo_url

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo_url = data[:photoUrl]
  end
end
