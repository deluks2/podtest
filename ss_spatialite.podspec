#
# Be sure to run `pod lib lint ss_spatialite.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ss_spatialite'
  s.version          = '4.3.0a'
  s.summary          = 'SpatiaLite is an open source library intended to extend the SQLite core to support fully fledged Spatial SQL capabilities.'

  s.description      = <<-DESC
SpatiaLite is smoothly integrated into SQLite to provide a complete and powerful Spatial DBMS (mostly OGC-SFS compliant).
                       DESC

  s.homepage         = 'https://git.oschina.net/spidersens/ss_spatialite'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yuan Cao' => 'ycao@spidersens.com' }

  s.ios.deployment_target = '8.0'

	s.source   = { :git => "https://git.oschina.net/spidersens/ss_spatialite.git", :tag => s.version.to_s }
	#s.source   = { :git => "https://git.oschina.net/spidersens/ss_spatialite.git", :commit => '6b5aa4adc1087b1c5cea20dcd576e3e11e14090d' }
	s.requires_arc = false

	s.ios.deployment_target = '4.0'
	s.osx.deployment_target = '10.9'
  
	s.compiler_flags = '-DHAVE_CONFIG_H'
	s.ios.compiler_flags = '-U__APPLE__'
	s.source_files = 'src/headers/**/*.h', 'src/{gaiaaux,gaiageo}/gg_*.c', 'src/{connection_cache,control_points,dxf,gaiaexif,geopackage,md5,shapefiles,spatialite,srsinit,versioninfo,virtualtext,wfs}/*.c'
	s.preserve_path = '**/*.h', '**/*.c'
	s.exclude_files = 'test/**/*'
	s.public_header_files = 'src/headers/spatialite.h'
	s.private_header_files = 'src/headers/**/*.h'
	s.header_mappings_dir = 'src/headers'
	s.prepare_command = <<-CMD
			./configure --enable-freexl=no --enable-geosadvanced=no
		CMD
	s.libraries = 'iconv', 'xml2', 'z'
	s.pod_target_xcconfig = {'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2 ${PODS_ROOT}/ss_spatialite ${PODS_ROOT}/ss_spatialite/src ${PODS_ROOT}/ss_spatialite/src/headers ${PODS_ROOT}/geos/include ${PODS_ROOT}/geos/capi ${PODS_ROOT}/ss_proj4/proj/src', 'CLANG_ENABLE_MODULES'=>'NO'}
	s.user_target_xcconfig = {'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES'=>'YES'}
	s.dependency 'sqlite3/rtree'
	s.dependency 'sqlite3/fts'
	s.dependency 'geos'
	s.dependency 'ss_proj4'
	
end
