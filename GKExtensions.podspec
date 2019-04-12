Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '10.0'
s.name = "GKExtensions"
s.summary = "Swift extensions for other libs"
s.requires_arc = true
s.version = "1.1.0"
s.license = { :type => "MIT", :file => "LICENSE" }
s.author = { "Opekishev Kirill" => "grumpykir@gmail.com" }
s.homepage = "https://github.com/GrumpyKir/GKExtensions"
s.source = { :git => "https://github.com/GrumpyKir/GKExtensions.git",
			 :tag => "#{s.version}" }
s.framework = "UIKit"
s.source_files = "GKExtensions/SourceData/*.swift"
s.swift_version = "5.0"

end
