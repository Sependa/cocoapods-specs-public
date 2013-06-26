Pod::Spec.new do |s|
  s.name         = "ADClusterMapView"
  s.version      = "0.0.3"
  s.summary      = "MKMapView with clustering."
  s.homepage     = "https://github.com/applidium/ADClusterMapView"
  s.license      = 'MIT'
  s.author       = 'Romain Goyet'

  s.source       = { :git => "https://github.com/Taptera/ADClusterMapView.git", :tag => "0.0.3" }
  s.platform     = :ios, '5.0'

  s.source_files = 'ADClusterMapView/*.{h,m}'

  s.frameworks = 'MapKit', 'CoreLocation'
  s.requires_arc = false
end
