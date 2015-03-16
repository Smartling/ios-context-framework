Pod::Spec.new do |s|
  s.name = 'SmartlingContextKit'
  s.version = '0.10.0'
  s.summary = 'Captures context from native iOS applications into Smartling TMS'
  s.license = {"type"=>"Commercial", "file"=>"LICENSE.md"}
  s.authors = {"Scott Rossillo"=>"srossillo@smartling.com"}
  s.homepage = 'https://github.com/Smartling/ios-context-framework'
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
