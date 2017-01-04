# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'day_schedule_selector/version'

Gem::Specification.new do |spec|
  spec.name          = "day_schedule_selector"
  spec.version       = DayScheduleSelector::VERSION
  spec.authors       = ["Chung-Yi Chi"]
  spec.email         = ["chung-yi@artsymail.com"]

  spec.summary       = %q{day-schedule-selector}
  spec.homepage      = "https://github.com/pop007755/day-schedule-selector"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
