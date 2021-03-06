Pod::Spec.new do |s|
  s.name             = "Yuma-BLE-Kit"
  s.version          = "0.0.1"
  s.summary          = "Reliable communication over BLE"
  s.description      = <<-DESC
                        Gives ability to reliably transfer variable length data over BLE.
                       DESC

  s.homepage         = "https://github.com/yumapos/Yuma-BLE-Kit-iOS"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = { :type => 'Commercial', :text => 'See http://www.yumasoft.com/' }
  s.author           = { "Yumasoft" => "yumasoftdev@gmail.com" }
  s.source           = { :git => "https://github.com/yumapos/Yuma-BLE-Kit-iOS.git", :tag => s.version.to_s }

  s.platform     = :ios, '10.2'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.default_subspec = 'YUBLECommunication'

  s.subspec 'YUBLECommunication' do |ybkc|
    ybkc.source_files = 'Yuma-BLE-Kit/YumaBLEKit/**/*.{h,m}'
    ybkc.dependency 'CocoaLumberjack', '~> 2.3.0'
    ybkc.dependency 'KVOController', '~> 1.2.0'
    ybkc.dependency 'libextobjc', '~> 0.4.1'
  end

  s.subspec 'YUBLEPayment' do |ybkp|
    ybkp.source_files = 'Yuma-BLE-Kit/YumaBLEKit/Payment/**/*.{h,m}'
    ybkp.dependency 'Yuma-BLE-Kit/YUBLECommunication', '~> 0.0.1'
  end

end
