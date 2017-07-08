CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
    config.permissions = 0666
    config.directory_permissions = 0777
    config.storage = :file
    config.asset_host = ENV['ASSET_HOST'] || 'http://192.168.33.10:3000'
  elsif Rails.env.production?  
    config.fog_provider = 'fog/aws' 
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['S3_REGION'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end

  if Rails.env.test?
    config.enable_processing = false
  end

end


CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/