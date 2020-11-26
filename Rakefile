require 'rake'
require 'rake/testtask'
require 'rubocop/rake_task'
require 'foodcritic'
require 'rspec/core/rake_task'

desc 'Run all tests'
task all: %i[
  rubocop
  foodcritic
  unit
]

task test: [
  :unit
]


RSpec::Core::RakeTask.new(:unit) do |t|
  t.rspec_opts = [].tap do |a|
    a.push('--color')
    a.push('--format progress')
  end.join(' ')
end