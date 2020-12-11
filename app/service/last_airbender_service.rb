class LastAirbenderService

  def members(nation, name)
    response = conn.get("/api/v1/characters?affiliation=#{nation}+#{name}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end
end
