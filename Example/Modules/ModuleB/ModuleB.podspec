#
# Be sure to run `pod lib lint ModuleB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ModuleB'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ModuleB.'

  s.homepage         = 'https://github.com/<GITHUB_USERNAME>/ModuleB'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Alan Yeh' => 'alan@yerl.cn' }
  s.source           = { :git => 'https://github.com/<GITHUB_USERNAME>/ModuleB.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ModuleB/Classes/**/*'
  s.public_header_files = ''

  s.frameworks = 'UIKit'
  s.dependency 'AYDispatcher'
end
