Pod::Spec.new do |s|

  s.name         = "SmartlingContextKit"
  s.version      = "0.9.0"
  s.summary      = "Captures context from a native iOS application and uploads it to Smartling's translation management system."

  s.description  = <<-DESC
                   SmartlingContextKit captures context from a native iOS application and uploads it to
                   Smartling's translation management system.

                   Works directly with content in your StoryBoards, XIBs, and programatically created content.
                   DESC

  s.homepage     = "https://github.com/Smartling/ios-context-framework"
  s.source       = { :git => 'https://github.com/Smartling/ios-context-framework.git', :tag => "v0.9.0" }
  s.license      = "Commercial"
  
  s.author             = { "Scott Rossillo" => "srossillo@smartling.com" }
  s.social_media_url   = "https://twitter.com/smartling"

  s.platform     = :ios, "8.0"

  s.public_header_files = "SmartlingContextKit.framework/Headers/SmartlingContextKit.h"
  s.vendored_frameworks = "SmartlingContextKit.framework"

  s.frameworks = "CFNetwork", "Foundation", "MobileCoreServices", "Security", "SystemConfiguration", "SmartlingContextKit"
  s.libraries = "icucore", "c++"

  s.requires_arc = true

end
