
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "emo_lister/version"

Gem::Specification.new do |spec|
  spec.name          = "emo_lister"
  spec.version       = EmoLister::VERSION
  spec.authors       = ["Brittany Cumens"]
  spec.email         = ["britt.cumens@gmail.com"]

  spec.summary       = %q{This gem will list information from Washed Up Emo}
  spec.description   = %q{This gem will list podcast episode information from Washed Up Emo. More features to come.}
  spec.homepage      = "https://github.com/bcfsu/emo-lister"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ['emo_lister']
  spec.require_paths = ["config"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  # spec.add_development_dependency "poltergeist"
  # spec.add_development_dependency "capybara"
end
