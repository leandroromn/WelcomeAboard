Pod::Spec.new do |s|
  s.name             = 'WelcomeAboard'
  s.version          = '1.0.0'
  s.summary          = 'A quick library to show the main features of your application.'
  s.description      = 'Use this library to display new features, bug fixes and other stuff for your users like an iOS native app.'
  s.swift_version   =  '5.1'
  s.homepage         = 'https://github.com/leandroromn/WelcomeAboard'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Leandro Romano' => 'leandroromano.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/leandroromn/WelcomeAboard.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/leandroromn'
  s.ios.deployment_target = '13.0'
  s.source_files = 'WelcomeAboard/Classes/**/*'
  s.frameworks = 'UIKit'
end
