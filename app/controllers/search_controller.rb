class SearchController < ApplicationController
  def index
    search = SearchResult.new(params[:nation])
    @members = search.members
  end
end
