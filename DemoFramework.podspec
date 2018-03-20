Pod::Spec.new do |s|

  s.name         = "DemoFramework"
  s.version      = "1.0.0"
  s.summary      = "DemoFramework SDK"
  s.description  = "DemoFramework to change background color."
  s.homepage     = "http://www.optimizeitsystems.com"
 
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "OPTLPTP184" => "rakesh@optimizeitsystems.com" }
 
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.pod_target_xcconfig = { "SWIFT_VERSION" => "4.0" }
  s.ios.vendored_frameworks = "DemoFramework.framework"
  
  s.source       = { :git => "https://raw.githubusercontent.com/rakeshchakraborty89/TestFramework/master/DemoFramework.podspec", :tag => "1.0.0" }
  
  # s.source       = { :path => '.' }

end
