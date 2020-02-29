lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "test_gem"
  spec.version       = TestGem::VERSION
  spec.authors       = ["keisuke713"]
  spec.email         = ["keisuke713@gmail.com"]

  spec.summary       = %q{gemのサマリーを書く}
  spec.description   = %q{gemの説明を書く}
  spec.homepage      = "https://github.com/keisuke713/test_gem"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
