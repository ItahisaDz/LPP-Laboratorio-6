# File: Rakefile

task :default => :bin

desc " Run bin/ppt_main.rb"
task :bin do
  sh "ruby -w -Ilib bin/ppt.rb" 
end

desc " Run tests with --format documentation"
task :test do
  sh "rspec -Ilib -Itest test/ppt_spec.rb --format documentation"
end

desc " Run tests with format: html"
task :html do
  sh "rspec -Ilib -Itest test/ppt_spec.rb --format html"
end