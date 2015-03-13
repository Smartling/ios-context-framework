Pod::Spec.new do |s|
  s.name = 'SmartlingContextKit'
  s.version = '0.9.1'
  s.summary = 'Provides powerful, yet simple to implement, over-the-air localization for your iOS App'
  s.license = {"type"=>"Commercial", "file"=>"LICENSE.md"}
  s.authors = {"Scott Rossillo"=>"srossillo@smartling.com"}
  s.homepage = 'http://smartling.com/SmartlingContextKit'
  s.description = 'Provides powerful, yet simple to implement, over-the-air localization for your iOS App'
  s.social_media_url = 'https://twitter.com/smartling'
  s.frameworks = ["CFNetwork", "Foundation", "MobileCoreServices", "Security", "SystemConfiguration"]
  s.requires_arc = true
  s.source = {}

  s.platform = :ios, '8.0'
  s.ios.platform             = :ios, '8.0'
  s.ios.preserve_paths       = 'ios/SmartlingContextKit.framework'
  s.ios.public_header_files  = 'ios/SmartlingContextKit.framework/Versions/A/Headers/*.h'
  s.ios.resource             = 'ios/SmartlingContextKit.framework/Versions/A/Resources/**/*'
  s.ios.vendored_frameworks  = 'ios/SmartlingContextKit.framework'
end
