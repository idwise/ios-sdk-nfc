#
# Be sure to run `pod lib lint IDWiseSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IDWiseNFC'
  s.version          = '3.11.0'
  s.summary          = 'IDWiseNFC SDK for Smart Document Capture'

  s.homepage         = 'https://www.idwise.com/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.author           = { 'IDWise LTD' => 'https://www.idwise.com/' }
  s.source           = { :http => 'http://mobile-sdk.idwise.ai/ios-sdk-nfc/3.11.0/IDWiseNFC.framework.zip' }
  s.ios.vendored_frameworks = 'IDWiseNFC.framework' # Your XCFramework
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  s.dependency 'DocumentReader'
  s.dependency 'DocumentReaderMRZRFID'


s.pod_target_xcconfig = {

    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }


end
