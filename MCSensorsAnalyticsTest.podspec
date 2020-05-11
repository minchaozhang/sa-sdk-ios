Pod::Spec.new do |s|
  s.name         = "MCSensorsAnalyticsTest"
  s.version      = "2.0.7"
  s.summary      = "The official iOS SDK of Sensors Analytics."
  s.homepage     = "http://www.sensorsdata.cn"
  s.source       = { :git => 'https://github.com/minchaozhang/sa-sdk-ios.git', :tag => "v#{s.version}" } 
  s.license = { :type => "Apache License, Version 2.0" }
  s.author = { "MC" => "zhangminchao@sensorsdata.cn" }
  s.platform = :ios, "8.0"
  s.default_subspec = 'core'
  s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'QuartzCore', 'CoreLocation', 'CoreMotion'
  s.libraries = 'icucore', 'sqlite3', 'z'

  s.subspec 'core' do |c|
    c.source_files  =  "SensorsAnalyticsSDK/**/*.{h,m}"
    c.public_header_files = "SensorsAnalyticsSDK/SensorsAnalyticsSDK.h","SensorsAnalyticsSDK/SAAppExtensionDataManager.h","SensorsAnalyticsSDK/SASecurityPolicy.h","SensorsAnalyticsSDK/SAConfigOptions.h","SensorsAnalyticsSDK/SAConstants.h"
    c.resource = 'SensorsAnalyticsSDK/SensorsAnalyticsSDK.bundle'
  end

end
