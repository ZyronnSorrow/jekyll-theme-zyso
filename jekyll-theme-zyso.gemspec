# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-zyso"
  spec.version       = "0.1.0"
  spec.authors       = ["ZyronnSorrow"]
  spec.email         = ["zyronn.sorrow@gmail.com"]

  spec.summary       = "The custom theme for my Github Pages websites, made available for use to the general public."
  spec.homepage      = "https://github.com/ZyronnSorrow/jekyll-theme-zyso"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|CHANGELOG|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll-feed"
  spec.add_runtime_dependency "jekyll-seo-tag"
  spec.add_runtime_dependency "jekyll-sitemap"
  spec.add_runtime_dependency "github-pages"
  spec.add_runtime_dependency "webrick"

  spec.add_development_dependency "bundler"
end
