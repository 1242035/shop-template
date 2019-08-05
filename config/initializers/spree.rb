# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
    # Example:
    # Uncomment to stop tracking inventory levels in the application
    # config.track_inventory_levels = false
    attachment_config={
        s3_credentials: {
            access_key_id: ENV['AWS_KEY'],
            secret_access_key: ENV['AWS_SECRET'],
            bucket: ENV['AWS_BUCKET']
        },
        storage:     :s3,
        s3_headers:  { "Cache-Control"=>"max-age=31557600" },
        s3_protocol: "https",
        bucket:      ENV['AWS_BUCKET'],
        url:         "url",
        styles: {
            mini:   "48x48>",
            small:  "100x100>",
            product:"240x240>",
            large:  "600x600>"
        },
        path:        "/spree/:class/:id/:style/:basename.:extension",
        default_url: "/spree/products/:id/:style/:basename.:extension",
        default_style: "product",
    }
    attachment_config.each do |key,value|
        Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
    end
end

# Configure Spree Dependencies
#
# Note: If a dependency is set here it will NOT be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will make the dependency value go away.
#
Spree.dependencies do |dependencies|
  # Example:
  # Uncomment to change the default Service handling adding Items to Cart
  # dependencies.cart_add_item_service = 'MyNewAwesomeService'
end


Spree.user_class = "Spree::LegacyUser"
