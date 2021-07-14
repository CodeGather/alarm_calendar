#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint alarm_calendar.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'alarm_calendar'
  s.version          = '0.0.4'
  s.summary          = '日历提醒插件'
  s.description      = <<-DESC
    A new flutter plugin project.
  DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { '21克的爱情' => 'raohong07@163.com' }
  s.source           = { :path => '.' }

  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  
  s.frameworks       = "EventKit"
  # s.frameworks   = "Photos","Contacts","CoreLocation","CoreBluetooth","UserNotifications","EventKit"

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.ios.deployment_target = '8.0'
  # s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
