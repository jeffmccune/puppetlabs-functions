#
# is_hash.rb
#

module Puppet::Parser::Functions
  newfunction(:is_array, :type => :rvalue, :doc => <<-EOS
    EOS
  ) do |arguments|

    raise(Puppet::ParseError, "is_hash(): Wrong number of arguments " +
      "given (#{arguments.size} for 1)") if arguments.size < 1

    type = arguments[0]

    result = type.is_a?(Hash)

    return result
  end
end

# vim: set ts=2 sw=2 et :
