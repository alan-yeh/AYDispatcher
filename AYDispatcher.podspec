#
# Be sure to run `pod lib lint AYDispatcher.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AYDispatcher'
  s.version          = '1.0.0'
  s.summary          = 'Dispatcher for modular development.'

  s.homepage         = 'https://github.com/alan-yeh/AYDispatcher'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alan Yeh' => 'alan@yerl.cn' }
  s.source           = { :git => 'https://github.com/alan-yeh/AYDispatcher.git', :tag => s.version.to_s }

  s.ios.deployment_target = '6.0'

  s.source_files = 'AYDispatcher/Classes/**/*'
  s.public_header_files = 'AYDispatcher/Classes/**/*.h'
end
