# frozen_string_literal: true

module Boolean2
  VERSION = '1.0.1'

  def self.new(object)
    object.to_boolean2
  end
end

class TrueClass
  include Boolean2
end

class FalseClass
  include Boolean2
end

class Object
  def to_boolean2
    !!self
  end
end
