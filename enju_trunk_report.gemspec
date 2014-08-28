$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enju_trunk_report/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enju_trunk_report"
  s.version     = EnjuTrunkReport::VERSION
  s.authors     = ["MiraitSystems"]
  s.email       = ["tamiya.emiko@miraitsystems.jp"]
  s.homepage    = "https://www.miraitsystems.jp/"
  s.summary     = "generate PDF report for EnjuTrunk"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.19"
  s.add_dependency "pdfkit"
  s.add_dependency 'wkhtmltopdf-binary'
end
