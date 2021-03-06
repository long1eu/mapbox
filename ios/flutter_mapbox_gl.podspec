Pod::Spec.new do |s|
  s.name             = 'flutter_mapbox_gl'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'Mapbox-iOS-SDK', '~> 5.3.0'
  s.dependency 'SwiftProtobuf', '~> 1.6.0'
  s.ios.deployment_target = '9.0'
end

