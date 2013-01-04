Refinery::Core.configure do |config|
  # Register extra javascript for backend
  config.register_javascript "refinery/news/news.js"  
  config.register_javascript "refinery/page-image-picker.js"  

  config.register_stylesheet "refinery/page-image-picker.css"
end
