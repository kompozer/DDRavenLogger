#
# Be sure to run `pod lib lint DDRavenLogger.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DDRavenLogger'
  s.version          = '0.1.0'
  s.summary          = 'CocoaLumberjack Custom Logger for Remote Logging to Sentry'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A custom CocoaLumberjack logger for remote logging to getsentry.com
                       DESC

  s.homepage         = 'https://github.com/kompozer/DDRavenLogger'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andreas Kompanez' => 'kompanez.andreas@gmail.com' }
  s.source           = { :git => 'https://github.com/kompozer/DDRavenLogger.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'

  s.source_files = 'DDRavenLogger/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DDRavenLogger' => ['DDRavenLogger/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'CocoaLumberjack'
  s.dependency 'Raven'
end
