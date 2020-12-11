class SearchResult
  attr_reader :name,
              :nation

  def initialize(nation_name)
    @name = format_name(nation_name)
    @nation = format_nation(nation_name)
  end

  def format_name(name)
    name.split("_")[1]
  end

  def format_nation(nation)
    nation.split("_")[0]
  end

  def members
    las = LastAirbenderService.new
    members = las.members(@nation, @name)
    members.map do|member|
      Member.new(member)
    end
  end
end
