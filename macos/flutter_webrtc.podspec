#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_webrtc'
  s.version          = '0.7.1'
  s.summary          = 'Flutter WebRTC plugin for macOS.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/cloudwebrtc/flutter-webrtc'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'CloudWebRTC' => 'duanweiwei1982@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files     = ['Classes/**/*']

  s.private_header_files = 'third_party/include/**/*'
  s.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => "$PODS_TARGET_SRCROOT/third_party/include"}
  s.vendored_libraries = 'third_party/lib/*.a'

  s.dependency 'FlutterMacOS'
  s.dependency 'WebRTC-SDK', '97.4692.02'
  s.osx.deployment_target = '10.11'
end
