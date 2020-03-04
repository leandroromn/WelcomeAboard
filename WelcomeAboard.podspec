Pod::Spec.new do |s|
  s.name             = 'WelcomeAboard'
  s.version          = '1.0.0'
  s.summary          = 'A brand new library for Welcome views.'
  s.description      = 'Use this library to display new features, bug fixes and other stuff for your users like iOS native app.'
  s.swift_version   =  '5.1'

  s.homepage         = 'https://github.com/leandroromn/WelcomeAboard'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Leandro Romano' => 'leandroromano.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/leandroromn/WelcomeAboard.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/leandroromn'

  s.ios.deployment_target = '13.0'

  s.source_files = 'WelcomeAboard/Classes/**/*'
  
  # s.resource_bundles = {
  #   'WelcomeAboard' => ['WelcomeAboard/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
