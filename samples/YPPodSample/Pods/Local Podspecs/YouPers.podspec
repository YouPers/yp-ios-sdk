Pod::Spec.new do |s|
  s.name         = "YouPers"
  s.version      = "0.0.1"
  s.summary      = "YouPers SDK for iOS"
  s.homepage     = "https://github.com/YouPers/yp-ios-sdk"
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  s.author       = { "jacopoYP" => "jacopo.sanguineti@youpers.com" }
  s.source       = { :git => "https://github.com/YouPers/yp-ios-sdk.git", :tag => '0.0.1' }
  s.source_files = 'src/*.{m,h}'
  s.frameworks   = 'SystemConfiguration', 'MobileCoreServices'
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.prefix_header_contents = "#import <SystemConfiguration/SystemConfiguration.h>",  "#import <MobileCoreServices/MobileCoreServices.h>"
  s.dependency 'AFNetworking', '~> 1.0'
end
