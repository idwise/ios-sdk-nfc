#
# Be sure to run `pod lib lint IDWiseSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IDWiseNFC'
  s.version          = '6.1.6'
  s.summary          = 'IDWiseNFC SDK for Smart Document Capture'

  s.homepage         = 'https://www.idwise.com/'
  s.author           = { 'IDWise LTD' => 'https://www.idwise.com/' }
  s.source           = { :http => 'https://mobile-sdk.idwise.ai/ios-sdk-nfc/6.1.6/IDWiseNFC.xcframework.zip' }
  s.ios.vendored_frameworks = 'IDWiseNFC.xcframework' # Your XCFramework
  s.ios.deployment_target = '15.6'
  s.swift_version = '5.0'
  s.dependency 'DocumentReader' 
  s.dependency 'DocumentReaderMRZRFID'
  s.dependency 'FingerprintPro', '2.12.0'
  s.dependency 'Shield-Ptr', '1.5.52'
  s.dependency 'OpenSSL-Universal', '3.3.1000'



s.pod_target_xcconfig = {

    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }


end
