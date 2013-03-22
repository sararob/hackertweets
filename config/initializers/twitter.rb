Twitter.configure do |config|
  config.consumer_key = "gDHasQz71uSVtHt1qUo5xA"
  config.consumer_secret = "MP7ZDVkas06rx9kWacRB1ZgkBRPOA2A51CVVxSstA90"
  config.oauth_token = "332018940-Syci2PwO9Z4P2F8IQjg1CnyLsfqizQfyJBQgkXXz"
  config.oauth_token_secret = "ykpePgMsVpsHSAlmB7haGemwIFlj39jIFH79tPjhU"
end

middleware = Proc.new do |builder|
  builder.use Twitter::Request::MultipartWithFile
  builder.use Faraday::Request::Multipart
  builder.use Faraday::Request::UrlEncoded
  builder.use Twitter::Response::RaiseError, Twitter::Error::ClientError
  builder.use Twitter::Response::ParseJson
  builder.use Twitter::Response::RaiseError, Twitter::Error::ServerError
  builder.adapter :typhoeus
end

Twitter.middleware = Faraday::Builder.new(&middleware)

require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key = "gDHasQz71uSVtHt1qUo5xA"
  config.consumer_secret = "MP7ZDVkas06rx9kWacRB1ZgkBRPOA2A51CVVxSstA90"
  config.oauth_token = "332018940-Syci2PwO9Z4P2F8IQjg1CnyLsfqizQfyJBQgkXXz"
  config.oauth_token_secret = "ykpePgMsVpsHSAlmB7haGemwIFlj39jIFH79tPjhU"
  config.auth_method        = :oauth
end