Pod::Spec.new do |s|
  s.name     = 'Cedar-Taptera'
  s.version  = '0.0.2'
  s.license  = 'MIT'
  s.summary  = 'BDD-style testing using Objective-C.'
  s.homepage = 'https://github.com/Taptera/cedar'
  s.author   = { 'Pivotal Labs' => 'http://pivotallabs.com' }
  s.license  = { :type => 'MIT', :file => 'MIT.LICENSE' }
  s.source   = { :git => 'https://github.com/Taptera/cedar.git', :commit => 'c35d2528ff550d2c5cf4bfdcaf9dfc54ed27c65c' }
  
  files_pattern = 'Source/**/*.{h,m,mm}'

  s.ios.header_dir = 'Cedar-iOS'
  s.ios.source_files = FileList[files_pattern].exclude(/CDROTestRunner.m$/)
  
  s.osx.source_files = FileList[files_pattern].exclude(/iPhone/)
  
  s.library = 'stdc++'
end