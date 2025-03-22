Pod::Spec.new do |spec|
  spec.name         = "TDMResearchSDK"
  spec.version      = "1.0.0"
  spec.summary      = "TDMResearchSDK"

  spec.description  = <<-DESC
  Tracking module for TVer DATA MARKETING.
                   DESC

  spec.homepage     = "https://github.com/TVer-DATA-MARKETING/tdm-ios-sdk"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.authors      = 'TVer DATA MARKETING Inc.'
  
  # TODO change git url
  spec.source       = { :git => "https://github.com/TVer-DATA-MARKETING/tdm-ios-sdk.git", :tag => "#{spec.version}" }

  spec.ios.deployment_target = "9.0"
  spec.tvos.deployment_target = "9.0"

  spec.source_files = [
    'VrInteractiveTracking/Resources/*.[mh]',
    'VrInteractiveTracking/Library/*.h'
  ]
  spec.resource_bundles = { 'VrInteractiveTracking' => 'VrInteractiveTracking/Resources/PrivacyInfo.xcprivacy'}

  spec.preserve_paths = 'VrInteractiveTracking/Library/*.a'
  spec.public_header_files = "VrInteractiveTracking/library/*.h"
  spec.library = "TDMResearchSDK"

  spec.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/TDMResearchSDK/VrInteractiveTracking/Library' }
end
