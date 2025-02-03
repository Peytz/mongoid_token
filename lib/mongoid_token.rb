# frozen_string_literal: true

require "zeitwerk"
require "active_support/concern"
loader = Zeitwerk::Loader.for_gem

# Zeitwerk attempts to autoload constants that are already explicitly defined
# because the mongoid_token gem has a directory named mongoid, which collides
# with the mongoid gem. Ignore the mongoid directory and the version file to
# prevent this.
loader.ignore("#{__dir__}/mongoid")
loader.ignore("#{__dir__}/version.rb")

loader.setup

module MongoidToken
end
