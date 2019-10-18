#
# Be sure to run `pod lib lint DeepStreamIOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DeepStreamIOS'
  s.version          = '0.1.0'
  s.summary          = 'DeepStreamIOS is created by Nobel Systems'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ThiyagarajanShivSankaran/DeepStreamIOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ThiyagarajanShivSankaran' => 'thiyagarajan@nobel-systems.com' }
  # s.source           = { :git => 'https://github.com/ThiyagarajanShivSankaran/DeepStreamIOS.git', :tag => s.version.to_s }
  s.source                    = { :http => "http://geoviewermobiledata.s3.amazonaws.com/DeepstreamIO333-2.2.2.zip" }

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.source_files = 'DeepStreamIOS/Classes/**/*'

s.public_header_files       = 'src/DeepstreamIO.h'
s.source_files              = 'src/DeepstreamIO.h'
s.preserve_paths            = '{j2objc,src}/**/*.{h,m,a}'
s.libraries                 = 'jre_emul', 'z'

s.ios.vendored_libraries      = 'lib/iosRelease/libdeepstream.io-client-java-j2objc.a'
s.watchos.vendored_libraries  = 'lib/iosRelease/libdeepstream.io-client-java-j2objc.a'
s.osx.vendored_libraries      = 'lib/x86_64Release/libdeepstream.io-client-java-j2objc.a'

s.xcconfig = {
'HEADER_SEARCH_PATHS'  => '${PODS_ROOT}/DeepstreamIO333/j2objc/include ${PODS_ROOT}/DeepstreamIO333/src/main/objc'
}
s.ios.xcconfig = {
'LIBRARY_SEARCH_PATHS' => '${PODS_ROOT}/DeepstreamIO333/j2objc/lib'
}
s.osx.xcconfig = {
'LIBRARY_SEARCH_PATHS' => '${PODS_ROOT}/DeepstreamIO333/j2objc/lib/macosx'
}

s.ios.deployment_target     = '8.3'
s.osx.deployment_target     = '10.11'
s.osx.frameworks            = 'ExceptionHandling'
s.pod_target_xcconfig       = { 'SWIFT_VERSION' => '3.0' }
s.resources                 = "swift/*.swift"
s.dependency                'Starscream', '~> 3.0.2'

  # s.resource_bundles = {
  #   'DeepStreamIOS' => ['DeepStreamIOS/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
