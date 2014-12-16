# encoded_uri = URI.encode(ENV["REDISTOGO_URL"])
# uri = encoded_uri.parse
uri = URI.parse(ENV["REDISTOGO_URI"])
Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
