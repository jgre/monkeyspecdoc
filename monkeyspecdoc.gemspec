Gem::Specification.new do |s|
  s.name = %q{monkeyspecdoc}
  s.version = "0.9.5"

  s.authors = ["Janico Greifenberg"]
  s.date = %q{2008-12-18}
  s.default_executable = %q{mkspecdoc}
  s.description = %q{Specdoc output for Ruby's Test::Unit and Shoulda}
  s.email = %q{jgre@jgre.org}
  s.executables = ["mkspecdoc"]
  s.require_paths = ["lib"]
  s.files = %w{bin/mkspecdoc monkeyspecdoc.gemspec lib/monkeyspecdoc.rb examples/helloworld.rb examples/helloworld_spec.rb examples/helloworld_test.rb examples/Rakefile test/error_test.rb test/failure_test.rb test/monkeyspecdoc_test.rb test/success_test.rb}
  s.has_rdoc = false
  s.homepage = %q{http://jgre.org/2008/09/03/monkeyspecdoc/}
  s.summary = %q{Specdoc output for Ruby's Test::Unit and Shoulda}
  s.test_files = ["test/monkeyspecdoc_test.rb"]
end
