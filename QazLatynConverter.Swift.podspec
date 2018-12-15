
Pod::Spec.new do |spec|

  spec.name         = "QazLatynConverter.Swift"
  spec.version      = "0.0.1"
  spec.summary      = "QazLatyn Converter for swift."

  spec.description  = <<-DESC
  Qazaq tili jazýynyń kırıl áripterin latyn grafıkasyna sáıkestendirýge arnalǵan konverterdiń swift tilindegi ashyq bastapqy kody jáne qoldaný mysaldary.
                   DESC

  spec.homepage     = "https://github.com/QazLatyn/QazLatynConverter.Swift"

  spec.license      = "MIT"

  spec.author             = { "QazLatyn" => "qazlatyn.kz@gmail.com" }

  spec.platform     = :ios, "8.0"
  Spec.swift_version = "4.2"

  spec.source       = { :git => "https://github.com/QazLatyn/QazLatynConverter.Swift.git", :tag => "#{spec.version}" }

  spec.source_files  = "QazLatynConverter.Swift/QazLatynHelper.swift"

end
