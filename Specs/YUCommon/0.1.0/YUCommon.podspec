#
# Be sure to run `pod lib lint YUCommon.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "YUCommon"
  s.version          = "0.1.0"
  s.summary          = "Collection of useful stuff"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                        Contains useful base claseses and protocols.
                       DESC

  s.homepage         = "https://github.com/yumapos/Yuma-Common-iOS"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = { :type => 'Commercial', :text => 'See http://www.yumasoft.com/' }
  s.author           = { "Yumasoft" => "yumasoftdev@gmail.com" }
  s.source           = { :git => "https://github.com/yumapos/Yuma-Common-iOS.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '9.1'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  #s.source_files = 'Pod/YumaCommonClasses/**/*'
  #s.resource_bundles = {
  #  'YumaLibResources' => ['Pod/Assets/*.png', ]
  #}

  s.subspec 'YumaCommon' do |yu|
    yu.source_files = 'YumaCommon/YumaLib/Source/**/*.{h,m}'
    yu.resource_bundles = {
    'YumaLibResources' => ['YumaCommon/Resources/*.{xib,png}']
  }
  end

  s.subspec 'POSCommon' do |ps|
    ps.source_files = 'POSCommon/POSLib/Sources/**/*.{h,m}'
    ps.dependency 'YUCommon/YumaCommon'
  end

  # s.public_header_files = 'Pod/Resources/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
