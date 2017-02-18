Pod::Spec.new do |s|
  s.name	= "ss_SpatialDBKit"
  s.version	= "0.1.1a"
  s.summary	= "SpatialDBKit is the spatial RDBMS for iOS."
  s.description = "An Objective-C wrapper of SpatiaLite, the smallest and simplest while powerful Spatial RDBMS in the world!"
  s.homepage	= "https://github.com/andreacremaschi/SpatialDBKit"
  s.license	= { :type => "Mozilla Public License v1.1",
		    :file => "LICENSE" }
  s.author	= { "Andrea Cremaschi" => "andreacremaschi@libero.it" }
  s.source  = { :git => "https://git.oschina.net/spidersens/ss_SpatialDBKit.git", :tag => s.version.to_s}

  s.platform = :ios, "5.0"

  s.dependency "ss_spatialite", "4.3.0a"
  s.dependency "FMDB/standalone/FTS"
  s.dependency "sqlite3/rtree"
  s.dependency "ss_ShapeKit", "0.9.6a"
  s.requires_arc = true

  s.source_files = "SpatialDBKit/*.{h,m}"

  s.public_header_files = "SpatialDBKit/*.h"
  
  s.pod_target_xcconfig = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ss_spatialite/src/headers', 'ALWAYS_SEARCH_USER_PATHS' => 'YES'}

end
