# frozen_string_literal: true

require('bundler')
Bundler.require
require_all('lib')
require_all('solutions')

raise('Please provide Problem arg like `./run 1`') if ARGV[0].nil?

problem = ARGV[0].to_i

path = "#{__dir__}/solutions/#{problem}/input"

Instrument.time do
  eval("Problem#{problem}", binding, __FILE__, __LINE__).run(path)
end
