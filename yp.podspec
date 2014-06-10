Pod::Spec.new do |s|
  s.name         = "YouPers"
  s.version      = "0.0.1"
  s.summary      = "Provides a Yahoo weather forecast, with basic UI, for a given zip code."
  s.homepage     = "https://github.com/stevenpsmith/YahooWeatherService"
  s.license      = 'MIT'<br>  s.author       = { "stevenpsmith" => "ssmith@chariotsolutions.com" }
  s.source       = { :git => "https://github.com/stevenpsmith/YahooWeatherService.git", :tag => 'v0.0.3' }
  s.platform     = :ios, '5.1'
  s.source_files = 'YahooWeather/API/*.{h,m}', 'YahooWeather/Model/*.{h,m}', 'YahooWeather/ViewController/*.{h,m}'
  s.resources = "YahooWeather/ViewController/*.{xib}"
  s.requires_arc = true
  s.dependency 'AFNetworking'
end


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
