Pod::Spec.new do |spec|
	spec.platform				= :ios
	spec.ios.deployment_target	= "10.0"

	spec.name			= "GKExtensions"
	spec.version		= "1.2.0"
	spec.license		= { :type => "MIT", :file => "LICENSE" }
	spec.homepage		= "https://github.com/GrumpyKir/GKExtensions"
	spec.author			= { "Opekishev Kirill" => "grumpykir@gmail.com" }
	spec.summary		= "Simple and useful swift extensions for common use"
	spec.source			= { :git => "https://github.com/GrumpyKir/GKExtensions.git", :tag => "#{spec.version}" }
	spec.swift_version	= "5.0"
	
	spec.source_files = "GKExtensions/SourceData/*.swift"
	
	spec.framework		= "UIKit"
	spec.requires_arc	= true
end
