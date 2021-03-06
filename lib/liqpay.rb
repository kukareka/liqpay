require 'liqpay/config'
require 'liqpay/client'
require 'liqpay/coder'
require 'liqpay/liqpay'

module Liqpay
  def self.config # :nodoc:
    @config ||= ::Liqpay::Config.new
  end

  def self.new(*options)
    ::Liqpay::Liqpay.new(*options)
  end

  def self.configure # :nodoc:
    yield config
    @config
  end
end