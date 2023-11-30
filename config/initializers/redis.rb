$redis = Redis.new(url: ENV["STACKHERO_REDIS_URL_TLS"])

# url = ENV["REDISCLOUD_URL"]

# if url
#   Sidekiq.configure_server do |config|
#     config.redis = { url: url }
#   end

#   Sidekiq.configure_client do |config|
#     config.redis = { url: url }
#   end
# end
