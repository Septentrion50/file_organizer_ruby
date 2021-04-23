#!/usr/local/bin/ruby -w
#
#Le -w après le shebang dit à Ruby de fonctionner avec des avertissements
#en plus. Pratique pour apprendre

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

rub_yml = File.open('.rubocop.yml', 'a')
rub_yml.puts('Style/FrozenStringLiteralComment:')
rub_yml.puts('  Enabled: false')
rub_yml.close

system('bundle install')

system('rspec --init')
