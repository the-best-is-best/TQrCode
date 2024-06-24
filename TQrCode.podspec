#
# Be sure to run `pod lib lint TQrCode.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TQrCode'
  s.version          = '1.0.0'
  s.summary          = 'A Compose library that provides to add Qr generator and qr reader.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "A Compose library that provides to add Qr generator and qr reader"

  s.homepage         = 'https://github.com/the-best-is-best/TQrCode'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Michelle Raouf' => 'michelle.raouf@outlook.com' }
  s.source           = { :git => 'https://github.com/the-best-is-best/TQrCode.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '15.0'
  s.swift_version = '5.5'

  s.source_files = 'TQrCode/Classes/**/*'
  
   s.resource_bundles = {
     'TQrCode' => ['TQrCode/Assets/*']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'


end
