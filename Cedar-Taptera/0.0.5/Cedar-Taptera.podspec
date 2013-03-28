Pod::Spec.new do |s|
  s.name     = 'Cedar-Taptera'
  s.version  = '0.0.5'
  s.license  = 'MIT'
  s.summary  = 'BDD-style testing using Objective-C.'
  s.homepage = 'https://github.com/Taptera/cedar'
  s.author   = { 'Pivotal Labs' => 'http://pivotallabs.com' }
  s.license  = { :type => 'MIT', :file => 'MIT.LICENSE' }
  s.source   = { :git => 'https://github.com/Taptera/cedar.git', :tag => '0.0.5' }
  
  files_pattern = 'Source/**/*.{h,m,mm}'

  s.osx.deployment_target = '10.7'
  s.ios.deployment_target = '5.0'
  s.ios.header_dir = 'Cedar-iOS'
  s.ios.source_files = FileList[files_pattern].exclude(/CDROTestRunner.m$/)
  
  s.osx.source_files = FileList[files_pattern].exclude(/iPhone/)
    
  s.library = 'c++'
  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++0x',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
  
end