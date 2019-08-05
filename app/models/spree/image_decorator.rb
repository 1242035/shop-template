Spree::Image.class_eval do
    attachment_config = {
        s3_credentials: {
            access_key_id:     ENV["AWS_KEY"],
            secret_access_key: ENV["AWS_SECRET"],
        },
    
        storage:      :s3,
        s3_headers: { 'Expires' => 1.year.from_now.httpdate,
                        'Cache-Control' => 'max-age=31557600' },
        s3_protocol:  'https',
        s3_region:    ENV["AWS_REGION"],
        bucket:       ENV["AWS_BUCKET"],
        url:          ':s3_domain_url',
    
        path: proc { |attachment| ":attachment/:class/:id/:style/:basename.:extension" },
        default_style:  'product'
    }
  
    attachment_config.each do |key, value|
        Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
    end
end