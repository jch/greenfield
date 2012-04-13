#!/usr/bin/env rake
require 'rspec/core/rake_task'

# Skip integration specs by default
RSpec::Core::RakeTask.new('spec') do |t|
  t.rspec_opts = '--tag ~integration'
end

RSpec::Core::RakeTask.new('spec:integration') do |t|
  t.rspec_opts = '--tag integration'
end

desc "Initial setup"
task :setup do
  `bundle`
  `bundle exec vendorer install`
  puts "Successfully setup. Running 'rackup'... Visit http://localhost:9292/"
  `bundle exec rackup`
end

desc <<-DESC
Deploy application to heroku.
  account=[name] if multiple heroku accounts
  app=[name]     if a different app name than directory
DESC
task :deploy do
  system "git init 1>/dev/null"
  remotes = `git remote`.chomp.split("\n")
  if remotes.include? 'heroku'
    `git push heroku master`
  else
    command = ['heroku', 'apps:create']
    app_name = ENV['app'].dup if ENV['app']
    app_name ||= File.basename(File.expand_path("..", __FILE__))
    app_name.gsub!('_', '-')
    command << app_name
    command << ['-s', 'cedar']
    command << ['--account', ENV['account']] if ENV['account']
    command.flatten!
    puts "Executing: #{command * ' '}\n\n"
    output = IO.popen(command << {:err => [:child, :out]}) do |io|
      io.read
    end
    unless $?.success?
      puts "Something went wrong.\n"
      case output
      when /No account specified/
        puts "Ambiguous heroku accounts, try 'rake deploy account=youraccount'"
      when /Name is already taken/
        puts "App name already taken, try 'rake deploy app=another-app-name'"
      else
        puts output
      end
    else
      puts output
    end
  end
end

desc "Remove tmp files"
task :clean do
  `rm -rf tmp/*`
  `find . -name '*.orig' | xargs rm -f`
  `find . -name '*.rej' | xargs rm -f`
  `find . -name '*~' | xargs rm -f`
end

task :default => :spec