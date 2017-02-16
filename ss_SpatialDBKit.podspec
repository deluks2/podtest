Pod::Spec.new do |s|
  s.name	= "ss_SpatialDBKit"
  s.version	= "0.1.1"
  s.summary	= "SpatialDBKit is the spatial RDBMS for iOS."
  s.description = "An Objective-C wrapper of SpatiaLite, the smallest and simplest while powerful Spatial RDBMS in the world!"
  s.homepage	= "https://github.com/andreacremaschi/SpatialDBKit"
  s.license	= { :type => "Mozilla Public License v1.1",
		    :file => "LICENSE" }
  s.author	= { "Andrea Cremaschi" => "andreacremaschi@libero.it" }
  s.source  = { :git => "/Users/caoyuan/Desktop/spatialite/ss_SpatialDBKit"}

  s.platform = :ios, "5.0"

  s.dependency "ss_spatialite"
  s.dependency "FMDB/standalone/FTS"
  s.dependency "ShapeKit"
  s.requires_arc = true

  s.source_files = "SpatialDBKit/*.{h,m}"

  s.public_header_files = "SpatialDBKit/*.h"

end
