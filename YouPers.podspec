Pod::Spec.new do |s|
  s.name         = "YouPers"
  s.version      = File.read('VERSION')
  s.summary      = "YouPers SDK for iOS"
  s.homepage     = "https://github.com/YouPers/yp-ios-sdk"
  s.license      = 'MIT'
  s.author       = { "Jacopo Sanguineti" => "jacopo.sanguineti@youpers.com" }
  s.source       = { :git => "https://github.com/YouPers/yp-ios-sdk.git", :tag => s.version.to_s}
  s.source_files = 'src/*.{m,h}'
  s.frameworks   = 'SystemConfiguration', 'MobileCoreServices'
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.prefix_header_contents = "#import <SystemConfiguration/SystemConfiguration.h>",  "#import <MobileCoreServices/MobileCoreServices.h>"
  s.dependency 'AFNetworking', '~> 1.0'
end


#s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
#s.social_media_url = 'https://twitter.com/EXAMPLE'
# s.platform     = :ios, '5.0'
# s.ios.deployment_target = '5.0'
# s.osx.deployment_target = '10.7'
# s.source_files = 'Classes'
# s.resources = 'Assets/*.png'
# s.ios.exclude_files = 'Classes/osx'
# s.osx.exclude_files = 'Classes/ios'
# s.public_header_files = 'Classes/**/*.h'
# s.frameworks = 'SomeFramework', 'AnotherFramework'
# s.dependency 'JSONKit', '~> 1.4'
