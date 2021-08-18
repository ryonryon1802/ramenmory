class GoogleApiClient
  def connection
    Faraday::Connection.new(url: "https://maps.googleapis.com") do |builder|
      builder.adapter Faraday.default_adapter
      builder.request :url_encoded
      builder.response :logger
      builder.response :json, :content_type => "application/json"
      # builder.headers['Content-Type'] = 'application/json'
    end
  end

  def find_location(serch_word)
    connection.get do |req|
      req.url "/maps/api/place/textsearch/json"
      req.params[:query] = serch_word
      req.params[:key] = ENV['GOOGLE_API_KEY']
    end
  end
end
