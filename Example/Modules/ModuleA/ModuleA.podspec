#
# Be sure to run `pod lib lint ModuleA.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ModuleA'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ModuleA.'

  s.homepage         = 'https://github.com/<GITHUB_USERNAME>/ModuleA'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Alan Yeh' => 'alan@yerl.cn' }
  s.source           = { :git => 'https://github.com/<GITHUB_USERNAME>/ModuleA.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ModuleA/Classes/**/*'
  s.public_header_files = ''

  s.frameworks = 'UIKit'
  s.dependency 'AYDispatcher'
end
