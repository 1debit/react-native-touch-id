require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name          = package['name']
  s.version       = package['version']
  s.source_files  = "*.{h,m}"
  s.platform      = :ios, "9.1"
  s.author        = package['author']
  s.license       = package['license']
  s.summary       = package['description']
  s.homepage      = 'https://github.com/1debit/react-native-touch-id'
  s.source        = { :git => 'https://github.com/1debit/react-native-touch-id.git' }

  s.dependency "React"
end