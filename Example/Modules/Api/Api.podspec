Pod::Spec.new do |s|
  s.name             = 'Api'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Api.'

  s.homepage         = 'https://github.com/<GITHUB_USERNAME>/Api'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Alan Yeh' => 'alan@yerl.cn' }
  s.source           = { :git => 'https://github.com/<GITHUB_USERNAME>/Api.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Api/Classes/**/*'

  s.frameworks = 'UIKit'
  s.dependency 'AYDispatcher'
end
