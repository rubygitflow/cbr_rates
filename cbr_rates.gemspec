require_relative 'lib/cbr_rates/version'

Gem::Specification.new do |spec|
  spec.name          = "cbr_rates"
  spec.version       = CbrRates::VERSION
  spec.authors       = ["rubygitflow"]
  spec.email         = ["nrubygitflow@gmail.com"]

  spec.summary       = %q{API with currency rates from cbr.ru.}
  spec.description   = %q{Fetching currency rates from cbr.ru.}
  spec.homepage      = "https://github.com/rubygitflow/cbr_rates"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
 
  spec.add_runtime_dependency 'money', '~> 6'
  spec.add_runtime_dependency 'nokogiri'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
