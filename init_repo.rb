Dir.mkdir('lib')

gitignore = File.open('./.gitignore', 'a')
gitignore.puts('.env')
gitignore.puts('*.log')
gitignore.puts('.rspec*')
gitignore.close

env = File.open('./.env', 'a')
env.close

gemfile = File.open('Gemfile', 'a')
gemfile.puts("source 'https://rubygems.org'")
gemfile.puts("ruby '2.7.1'")
gemfile.puts("gem 'rspec'")
gemfile.puts("gem 'pry'")
gemfile.puts("gem 'rubocop'")
gemfile.close

system('bundle install')

system('rspec --init')
