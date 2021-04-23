require 'launchy'

def search
  search = ARGV.join('+')
  Launchy.open('https://google.com/search?q=' + search)
  return nil
end

search
