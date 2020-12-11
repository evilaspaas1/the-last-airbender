class SearchController < ApplicationController
  def index
    @search = SearchResult.new(params[:nation])
  end
end
