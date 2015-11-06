CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['OAO_AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['OAO_AWS_SECRET_ACCESS_KEY'],
    region: 'us-west-2'
  }
  config.fog_directory = ENV['OAO_AWS_BUCKET']
end