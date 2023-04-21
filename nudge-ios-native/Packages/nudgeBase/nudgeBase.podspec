#
# Be sure to run `pod lib lint NudgeBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'nudgeBase'
  s.version          = '1.2.0-rc1'
  s.summary          = 'Nudge is a powerful tool that enables mobile banking apps to send push notifications to users.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Nudge is a powerful tool that enables mobile banking apps to send push notifications to users. Register today!'

  s.homepage         = 'https://github.com/getlarky/nudgeBase-specs'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => '1 Custom', :text => "<<-LICENSE Copyright (c) 2023, Larky, Inc. Please contact Larky (support@larky.com) for licensing details. LICENSE" }
  s.author           = { 'connorlarky' => 'connor@larky.com' }
  s.source           = { :http => 'https://github.com/getlarky/nudgeBase-specs-staging/releases/download/1.2.0-rc1/nudgeBase.zip'}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'

  #s.source_files  = 'nudgeBase/Sources/NudgeBase/*.{swift}'
  
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'FirebaseMessaging', '9.3.0'

 # s.default_subspecs = 'EnvironmentUtils', 'KeyValueStore',  'NudgeBase'
  
  s.subspec 'EnvironmentUtils' do |eu|
    eu.source_files = 'Sources/EnvironmentUtils/*.{swift}'
  end
  
  s.subspec 'KeyValueStore' do |kv|
    kv.source_files = 'Sources/KeyValueStore/*.{swift}'
  end
  
  s.subspec 'NudgeBase' do |nb|
    nb.source_files = 'Sources/NudgeBase/*.{swift}'
    nb.dependency 'nudgeBase/EnvironmentUtils'
    nb.dependency 'nudgeBase/KeyValueStore'
  end
  
end

