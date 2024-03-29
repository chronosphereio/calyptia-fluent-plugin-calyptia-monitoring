lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name    = "fluent-plugin-calyptia-monitoring"
  spec.version = "0.1.3"
  spec.authors = ["Hiroshi Hatake"]
  spec.email   = ["hatake@calyptia.com"]

  spec.summary       = %q{Monitoring Fluentd via Calyptia Cloud}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/calyptia/fluent-plugin-calyptia-monitoring"
  spec.license       = "Apache-2.0"

  test_files, files  = `git ls-files -z`.split("\x0").partition do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.files         = files
  spec.executables   = files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = test_files
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "test-unit", "~> 3.3"
  spec.add_runtime_dependency "fluentd", [">= 1.14.0", "< 2"]
  spec.add_runtime_dependency "fluent-plugin-metrics-cmetrics", ">= 0.1.1"
end
