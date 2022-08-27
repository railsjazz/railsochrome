require_relative "lib/railsochrome/version"

Gem::Specification.new do |spec|
  spec.name        = "railsochrome"
  spec.version     = Railsochrome::VERSION
  spec.authors     = [""]
  spec.email       = ["igorkasyanchuk@gmail.com"]
  spec.homepage    = "https://www.railsjazz.com"
  spec.summary     = "Get better visibility of what happen on your server with logs directly in Chrome"
  spec.description = "Get better visibility of what happen on your server with logs directly in Chrome"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/railsjazz/railsochrome"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 5.0.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "puma"
end
