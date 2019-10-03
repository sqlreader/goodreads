module Goodreads
  module Series
    # Get series details
    def series(series_id)
      data = request("/series/show", id: series_id)
      Hashie::Mash.new(data["series"])
    end

    # Get a list of series by author
    def series_list(author_id)
      data = request("/series/list", id: author_id)
      Hashie::Mash.new(data["series_works"])
    end
  end
end
